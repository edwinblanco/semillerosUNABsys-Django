

from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_decode, urlsafe_base64_encode
from django.contrib.auth.tokens import default_token_generator
from django.utils.encoding import force_bytes
from django.core.mail import EmailMessage, EmailMultiAlternatives


from django.shortcuts import redirect, render
from django.contrib import auth, messages

from django.contrib.auth.decorators import login_required
from asignacion_evaluador.models import AsignacionEvaluacion
from evaluaciones_orales.models import ActivacionCalificacionOral, EvaluacionOral
from evaluaciones_preseleccion.models import EvaluacionPreseleccion
from proyectos_app.models import Proyecto

from usuarios_app.forms import FormularioRegistro
from usuarios_app.models import Usuario

# Create your views here.
def login_view_page(request):
    
    return render(request, 'usuarios/login.html')


def tablero_view(request):
    print('userrrrrr------>', request.user.id)
    
    proyectos = Proyecto.objects.filter(autores__id = request.user.id)
    
    print('proyectos', proyectos)
    
    return render(request, 'usuarios/tablero.html', {'proyectos': proyectos})

def login_view(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        password = request.POST.get('password')
        
        user = auth.authenticate(correo_institicional=email, password=password)
        
        if user is not None:
            auth.login(request, user)
            #print('-----user-- ', user.is_active)
            
            return redirect('tablero')
        
        else:
            messages.error(request, 'Las credenciales son incorrectas')
            return redirect('login-page')  
        
def registro_view(request):
    
    form = FormularioRegistro()
    
    if request.method == 'POST':
        form = FormularioRegistro(request.POST)
        
        if form.is_valid():
            nombres = form.cleaned_data['nombres']
            apellidos = form.cleaned_data['apellidos']
            correo_institicional = form.cleaned_data['correo_institicional']
            programa_academico = form.cleaned_data['programa_academico'] 
            password = form.cleaned_data['password']
            id_institucional = form.cleaned_data['id_iniversidad']
            documento = form.cleaned_data['no_documento']
            
            username = correo_institicional.split('@')[0]
            
            user = Usuario.objects.create_user(nombres = nombres, apellidos = apellidos, username = username, correo_institicional = correo_institicional, password = password  )
    
            user.programa_academico = programa_academico
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
    messages.success(request, 'Has salido de sesion')
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