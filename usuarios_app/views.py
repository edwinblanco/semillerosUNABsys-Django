

from operator import is_
from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_decode, urlsafe_base64_encode
from django.contrib.auth.tokens import default_token_generator
from django.utils.encoding import force_bytes
from django.core.mail import EmailMessage, EmailMultiAlternatives


from django.shortcuts import redirect, render
from django.contrib import auth, messages

from django.contrib.auth.decorators import login_required
from asignacion_evaluador.models import AsignacionEvaluacion, AsignacionEvaluacionInngeniatec
from carrera_app.models import Programa, Universidad
from evaluaciones_orales.models import ActivacionCalificacionOral, EvaluacionOral
from evaluaciones_preseleccion.models import EvaluacionPreseleccion, ValoracionProyectoIngeniatec
from proyectos_app.models import ActivacionConvocatoria, Proyecto

from usuarios_app.forms import FormularioRegistro
from usuarios_app.models import Usuario

# Create your views here.
def login_view_page(request):
    
    return render(request, 'usuarios/login.html')


def tablero_view(request):
    proyectos = Proyecto.objects.filter(autores__id = request.user.id).order_by('-fecha_creacion')
    activacion_convocatoria = ActivacionConvocatoria.objects.get(id=1)
    return render(request, 'usuarios/tablero.html', {'proyectos': proyectos, 'activacion_convocatoria': activacion_convocatoria.activacion_convocatoria})

def tablero_tutor_view(request):
    proyectos = Proyecto.objects.filter(tutores__id = request.user.id).order_by('-fecha_creacion')
    return render(request, 'usuarios/tablero_tutor.html', {'proyectos': proyectos})

def login_view(request, valorador = 0):
    if request.method == 'POST':
        email = request.POST.get('email')
        password = request.POST.get('password')
        
        user = auth.authenticate(correo_institicional=email, password=password)
        
        if user is not None:
            auth.login(request, user)
            #print('-----user-- ', user.is_active)
            
            if request.user.is_evaluador:
                return redirect('tablero-inicial-valorador')
            if valorador == 0:
                return redirect('tablero')
            else:
                return redirect('tablero-inicial-valorador')
                
        else:
            messages.error(request, 'Las credenciales son incorrectas')
            return redirect('login-page')  
      
def guia_view(request):
    return render(request, 'includes/guia.html')      
        
def registro_view(request):
    
    form = FormularioRegistro()
    
    if request.method == 'POST':
        form = FormularioRegistro(request.POST)
        
        if form.is_valid():
            nombres = form.cleaned_data['nombres']
            apellidos = form.cleaned_data['apellidos']
            correo_institicional = form.cleaned_data['correo_institicional']
            programa_academico = form.cleaned_data['programa_academico'] 
            universidad = form.cleaned_data['universidad'] 
            password = form.cleaned_data['password']
            id_institucional = form.cleaned_data['id_iniversidad']
            documento = form.cleaned_data['no_documento']
            is_tutor = form.cleaned_data['is_tutor']
            otra_universidad = form.cleaned_data['otra_universidad']
            otra_carrera = form.cleaned_data['otra_carrera']
            
            username = correo_institicional.split('@')[0]
            
                           
            user = Usuario.objects.create_user(nombres = nombres, apellidos = apellidos, username = username, correo_institicional = correo_institicional, password = password)
    
            if universidad == None and otra_universidad != "":
                universidad2 = Universidad.objects.create(universidad = otra_universidad)
                user.universidad = universidad2
            else:
                user.universidad = universidad    
                
            if programa_academico == None and otra_carrera != "":
                programa2 = Programa.objects.create(nombre = otra_carrera)
                user.programa_academico = programa2
            else:
                user.programa_academico = programa_academico
    
            if int(is_tutor) == 2:
                user.is_tutor = True
    
            user.id_iniversidad = id_institucional
            user.no_documento = documento            
            user.save()
            
            current_site = get_current_site(request)
            mail_subject= 'Por favor activa tu cuenta se Semilleros Unab'
            body = render_to_string('usuarios/verificacion_usuario_email.html', {
                'user': user,
                'dominio': current_site,
                'uid': urlsafe_base64_encode(force_bytes(user.pk)),
                'token': default_token_generator.make_token(user),
                
            })
            
            to_email = correo_institicional
            send_email = EmailMultiAlternatives(mail_subject, body, to = [to_email])
            send_email.send()
            
            #messages.success(request, 'Se registró exitosamente')
            return redirect('/usuarios/login_page/?command=verification&email='+correo_institicional)
    

    contex = {
        'form': form
    }
    
    return render(request,'usuarios/registro.html', contex)

@login_required(login_url = 'login-page')
def loguot_view(request):
    auth.logout(request)
    messages.success(request, 'Has salido de sesión')
    return redirect('login-page')


def activate_view(request, uidb64, token):
    try:
        uid = urlsafe_base64_decode(uidb64).decode()
        user = Usuario._default_manager.get(pk = uid)
    except(TypeError, ValueError, OverflowError, Usuario.DoesNotExist):
        user = None
        
    if user is not None and default_token_generator.check_token(user, token):
        user.is_active = True
        user.is_autor = True
        user.save()
        
        messages.success(request, '¡Tu cuenta ha sido activada!')
        return redirect('login-page')
    
    else:
        messages.error(request, 'La activación es invalida')
        return redirect('registro')
            
            
def contrasena_olvidada_view(request):
    
    if request.method == 'POST':
        email = request.POST['email']
        
        if Usuario.objects.filter(correo_institicional=email).exists():
            user = Usuario.objects.get(correo_institicional__exact=email)
            
            current_site = get_current_site(request)
            mail_subject = 'Resetear contraseña'
            body = render_to_string('usuarios/reset_contrasena_email.html', {
                'user': user,
                'domain': current_site,
                'uid': urlsafe_base64_encode(force_bytes(user.pk)),
                'token': default_token_generator.make_token(user),
            })
            
            to_email = email
            send_email = EmailMultiAlternatives(mail_subject, body, to = [to_email])
            send_email.send()
            
            messages.success(request, 'Te enviamos un correo para resetear tu contraseña')
            return redirect('login-page')
        
        else:
            messages.error(request, 'El correo no existe en la base de datos')
            return redirect('contrasena-olvidada')
        
    return render(request, 'usuarios/contraseña_olvidada.html')


def resetcontrasena_validate_view(request, uidb64, token):
    try:
        uid = urlsafe_base64_decode(uidb64).decode()
        user = Usuario._default_manager.get(pk=uid)
        
    except(TypeError, ValueError, OverflowError, Usuario.DoesNotExist):
        user = None
        
    if user is not None and default_token_generator.check_token(user, token):
        request.session['uid'] = uid
        messages.success(request, 'Por favor resetea tu constraseña')
        return redirect('resetearContrasena')
    else:
        messages.error(request, 'El link caducó')
        return redirect('login-page')         
    
    
def resetearContrasena_view(request):
    
    if request.method == 'POST':
        password = request.POST['password']
        confirm_password = request.POST['confirm_password']
        
        if password == confirm_password:
            uid = request.session.get('uid')
            user = Usuario.objects.get(pk=uid)
            user.set_password(password)
            user.save()
            messages.success(request, 'La contraseña se reseteo correctamente')
            
            return redirect('login-page')
        
        else:
            messages.error(request, 'Las contraseñas no coinciden')
            return redirect('resetearContrasena')    
        
    else:
        return render(request, 'usuarios/resetearContrasena.html')
       
    
    
def tablero_evaluador_view(request):
    
    proyectos_asignados = AsignacionEvaluacion.objects.filter(evaluadores__id = request.user.id)
    calificaciones_orales = EvaluacionOral.objects.filter(evaluador = request.user.id, is_calificado = True)
    calificaciones_preseleccion = EvaluacionPreseleccion.objects.filter(evaluador = request.user.id, is_calificado = True)
    activacion_calificacion_oral = ActivacionCalificacionOral.objects.get(id=1)
    
    return render(request, 'usuarios/tablero_evaluador.html', {'activacion_calificacion_oral':activacion_calificacion_oral.activacion_calificacion_oral,'proyectos_asignados': proyectos_asignados, 'calificaciones_orales': calificaciones_orales, 'calificaciones_preseleccion':calificaciones_preseleccion})    


def resumen_calificaciones_view(request, pk = None):
    calificaciones_orales = EvaluacionOral.objects.filter(proyecto__id = pk)
    calificaciones_preseleccion = EvaluacionPreseleccion.objects.filter(proyecto__id = pk)
    proyecto = Proyecto.objects.get(id=pk)
    
    nota_f = 0.0
    
    if calificaciones_orales.count() >= 1 and calificaciones_preseleccion.count() >=1:
    
        for calificacion_oral in calificaciones_orales:
            nota_f += float(calificacion_oral.calificacion_final_70())
            
        nota = nota_f / calificaciones_orales.count()    
        
        print('nota final de calificaciones orales: ', nota)
        print('# numero de calificaciones orales: ', calificaciones_orales.count())
        
        nota_f2 = 0.0
        
        for calificacion_pres in calificaciones_preseleccion:
            nota_f2 += float(calificacion_pres.calificacion_final_30())
            
        nota2 = nota_f2 / calificaciones_preseleccion.count()   
        
        print('nota final de calificaciones orales: ', nota2)
        print('# numero de calificaciones orales: ', calificaciones_preseleccion.count())
        
        nota_final = nota + nota2
        
        print('proyecto: ', proyecto)
    
    else:
        messages.info(request, 'Notas incompletas')
        return redirect('tablero')
    
    context = {
        'calificaciones_orales': calificaciones_orales,
        'nota_calificacion_oral': nota,
        'nota_calificacion_prese': nota2,
        'nota_final': nota_final,
        'proyecto': proyecto,
        }
    
    return render(request, 'usuarios/modal_calificaciones.html', context)


def reporte_usuarios_view(request):
    usuarios = Usuario.objects.all()
    
    context = {
        'usuarios': usuarios,
        }
    
    return render(request, 'usuarios/reporte_usuarios.html', context)

def tablero_evaluador_inngeniatec_view(request):
    
    proyectos_asignados = AsignacionEvaluacionInngeniatec.objects.filter(evaluadores__id = request.user.id)
    calificacion_inngeniatec = ValoracionProyectoIngeniatec.objects.filter(evaluador = request.user.id, is_calificado = True)
    
    return render(request, 'usuarios/tablero_evaluador_ingenniatec.html', {'proyectos_asignados': proyectos_asignados, 'calificacion_inngeniatec': calificacion_inngeniatec}) 


def tablero_inicial_valorador_view(request):
    asignaciones_ingeniatec = AsignacionEvaluacionInngeniatec.objects.filter(evaluadores= request.user).count()
    asignaciones_semilleros = AsignacionEvaluacion.objects.filter(evaluadores= request.user).count()

    context = {
        'asignaciones_ingeniatec': asignaciones_ingeniatec,
        'asignaciones_semilleros': asignaciones_semilleros,
    }
    return render(request, 'usuarios/tablero_valorador_inicio.html', context);   