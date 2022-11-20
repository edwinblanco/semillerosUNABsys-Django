from django.shortcuts import get_object_or_404, render

from django.shortcuts import redirect, render
from django.contrib import messages
from django.core.mail import EmailMessage, EmailMultiAlternatives
from django.template.loader import render_to_string

from asignacion_evaluador.forms import FormularioAsignarValorador, FormularioAsignarValoradorInngeniatec, FormularioOdenarAsignacion
from asignacion_evaluador.models import AsignacionEvaluacion, AsignacionEvaluacionInngeniatec, HistoriaCambiosAsignacionSemilleros
from evaluaciones_preseleccion.models import ValoracionProyectoIngeniatec
from proyectos_app.models import Periodo, Proyecto

# Create your views here.

def seleccionar_periodo_view(request):
    periodos = Periodo.objects.all()
    context={
        'periodos':periodos,
    }
    return render(request,'evaluaciones/asignacion_periodo_semilleros.html', context)

def seleccionar_periodo_inngeniatec_view(request):
    periodos = Periodo.objects.all()
    context={
        'periodos':periodos,
    }
    return render(request,'evaluaciones/asignacion_periodo_inngeniatec.html', context)

def asignar_valorador_view(request, pk = None, periodo_slug=None):
    
    if periodo_slug is None:
        periodo_slug2 = request.GET.get('select_periodo')
        periodo2 = get_object_or_404(Periodo, slug=periodo_slug2)
    else:
        periodo_slug2 = periodo_slug
        periodo2 = get_object_or_404(Periodo, slug=periodo_slug2) 
    
    form = FormularioAsignarValorador(periodo=periodo2)

    if pk is None:
        form2 = FormularioOdenarAsignacion()
        asignaciones = AsignacionEvaluacion.objects.all().order_by('proyecto')
        
        if request.method == 'POST':
            form = FormularioAsignarValorador(request.POST, periodo=periodo2)
            
            if form.is_valid():
                proyecto = form.cleaned_data['proyecto']
                evaluadores = form.cleaned_data['evaluadores']
                        
                count_asiganciones = AsignacionEvaluacion.objects.filter(proyecto=proyecto).count()
                if count_asiganciones >= 1:
                    messages.error(request, 'El proyecto ya tiene valorador/es asignado/os')
                else:   
                    
                    # no activo debido a vencimiento en la capa gratuita del servidor de correos
        
                    #for valorador in evaluadores:
                        #print('evaluador ', valorador.correo_institicional) 
                        #mail_subject = 'Has sido asignado a un proyecto a valorar de Semilleros de Investigación'
                        #body = render_to_string('usuarios/notificacion_asignacion_valorador.html', {
                            #'nombre': valorador.nombres,
                            #'apellido': valorador.apellidos,
                            #'proyecto': proyecto.titulo,
                        #})
                            
                        #to_email = valorador.correo_institicional
                        #send_email = EmailMultiAlternatives(mail_subject, body, to = [to_email])
                        #send_email.send()
                        
                    asignacion = AsignacionEvaluacion.objects.create(proyecto=proyecto)
                    asignacion.evaluadores.set(evaluadores)
                    asignacion.save()
                    
                    messages.success(request, 'Se asignó correctamente')
                    return redirect('asigancion-valorador-proyecto', periodo_slug=periodo_slug2)
            
            else: 
                messages.error(request, 'error')
        
        contex = {
            'form': form,
            'form2': form2,
            'actualizar': False,
            'slug':periodo_slug2,
            'asignaciones': asignaciones,
        }        

        return render(request,'evaluaciones/asignacion_valorador.html', contex)
    
    else:
        asignacion = get_object_or_404(AsignacionEvaluacion, id=pk)
        
        form.fields['proyecto'].initial = asignacion.proyecto
        #form.fields['evaluadores'].initial = asignacion.evaluadores
        
        contex = {
            'form': form,
            'slug':periodo_slug2,
            'actualizar': True,
            'idp': asignacion.id
        }
    
    return render(request,'evaluaciones/asignacion_valorador.html', contex)
            
def actualizar_asignacion_semilleros_view(request, periodo_slug, pk):
    
    form = FormularioAsignarValorador()
    slug = periodo_slug

    if request.method == 'POST':
        form = FormularioAsignarValorador(request.POST)
        
        asignacion = get_object_or_404(AsignacionEvaluacion, id=pk)
        
        if form.is_valid():
            observaciones = form.cleaned_data['observaciones']
            evaluadores = form.cleaned_data['evaluadores']
            
            historial_cambio = HistoriaCambiosAsignacionSemilleros.objects.create(proyecto = asignacion.proyecto, observaciones=observaciones)
            historial_cambio.valoracdores_anteriores.set(asignacion.evaluadores.all())
            historial_cambio.valoradores_nuevos.set(evaluadores)
            historial_cambio.save()
            
            proyecto = form.cleaned_data['proyecto']
            
            asignacion.proyecto = proyecto
            asignacion.evaluadores.set(evaluadores)
            asignacion.save()
            
            messages.success(request, 'Se actualizó exitosamente la asignación y se creó una historia con el cambio')
            return redirect('asigancion-valorador-proyecto', periodo_slug=slug)
        
        else: 
            messages.error(request, 'Error, campos inválidos. Ningún campo debe estar vacío')
            return redirect('/asigancion_valoradores/actualizar-asignacion-semilleros/'+str(asignacion.id))

def ordenar_tabla_asignaciones_semilleros_view(request, periodo_slug):
    
    periodo2 = get_object_or_404(Periodo, slug=periodo_slug) 
    
    form2 = FormularioOdenarAsignacion()
    form = FormularioAsignarValorador(periodo=periodo2)
    if request.method == 'POST':
        form2 = FormularioOdenarAsignacion(request.POST)
        
        if form2.is_valid():
            seleccion = form2.cleaned_data['seleccion_ordenamiento']
            if seleccion == '1':
                asignaciones = AsignacionEvaluacion.objects.all().order_by('proyecto')
            if seleccion == '2':
                asignaciones = AsignacionEvaluacion.objects.all().order_by('-proyecto')
            if seleccion == '3':
                asignaciones = AsignacionEvaluacion.objects.all().order_by('-fecha_asignacion')
            if seleccion == '4':
                asignaciones = AsignacionEvaluacion.objects.all().order_by('fecha_asignacion')
            if seleccion == '5':
                asignaciones = AsignacionEvaluacion.objects.all().order_by('-proyecto__periodo__slug')
            if seleccion == '6':
                asignaciones = AsignacionEvaluacion.objects.all().order_by('proyecto__periodo__slug')
        else: 
            messages.error(request, 'error')
    
    contex = {
        'form2': form2,
        'form': form,
        'asignaciones': asignaciones,
        'actualizar':False,
        'slug': periodo_slug,
    }        

    return render(request,'evaluaciones/asignacion_valorador.html', contex)

def asignar_valorador_inngeniatec_view(request, periodo_slug=None, pk = None):
    
    if periodo_slug is None:
        periodo_slug2 = request.GET.get('select_periodo')
        periodo2 = get_object_or_404(Periodo, slug=periodo_slug2)
    else:
        periodo_slug2 = periodo_slug
        periodo2 = get_object_or_404(Periodo, slug=periodo_slug2) 
    form = FormularioAsignarValoradorInngeniatec(periodo=periodo2)
    
    if request.method == 'POST':
        form = FormularioAsignarValoradorInngeniatec(request.POST, periodo=periodo2)
        
        if form.is_valid():
            proyecto = form.cleaned_data['proyecto']
            evaluadores = form.cleaned_data['evaluadores']
            
            count_asiganciones = AsignacionEvaluacionInngeniatec.objects.filter(proyecto=proyecto).count()
            if count_asiganciones >= 1:
                messages.error(request, 'El proyecto ya tiene valorador/es asignado/os')
            else:   
                
                # no activo debido a vencimiento en la capa gratuita del servidor de correos
                
                #for valorador in evaluadores:
                    #print('evaluador ', valorador.correo_institicional) 
                    #mail_subject = 'Has sido asignado a un proyecto a valorar de Inngeniate-C'
                    #body = render_to_string('usuarios/notificacion_asignacion_valorador.html', {
                        #'nombre': valorador.nombres,
                        #'apellido': valorador.apellidos,
                        #'proyecto': proyecto.titulo,
                    #})
                        
                    #to_email = valorador.correo_institicional
                    #send_email = EmailMultiAlternatives(mail_subject, body, to = [to_email])
                    #send_email.send()
                       
                asignacion = AsignacionEvaluacionInngeniatec.objects.create(proyecto=proyecto)
                asignacion.evaluadores.set(evaluadores)
                asignacion.save()
                
                
                messages.success(request, 'Se asignó correctamente')
                return redirect('asigancion-valorador-proyecto-inngeniatec', periodo_slug=periodo_slug)
        
        else: 
            messages.error(request, 'error')
                
    asignaciones = AsignacionEvaluacionInngeniatec.objects.all().order_by('-fecha_asignacion')
    
    contex = {
        'form': form,
        'slug': periodo_slug2,
        'asignaciones': asignaciones,
    }        

    return render(request,'evaluaciones/asignacion_valorador_inngeniatec.html', contex)

def reporte_valoradores_asignados_view(request):
    
    asiganciones_ingeniatec = AsignacionEvaluacionInngeniatec.objects.all()
    asiganciones_semilleros = AsignacionEvaluacion.objects.all()
    
    lista_valoradores_ingeniatec = []
    lista_valoradores_ingeniatec2 = []
    
    lista_valoradores_semilleros = []
    lista_valoradores_semilleros2 = []
    
    for asignacion in asiganciones_ingeniatec:
        for val in asignacion.evaluadores.all():
            lista_valoradores_ingeniatec.append(
                val.nombres+' '+val.apellidos+' '+val.correo_institicional
            )
            
    for asignacion2 in asiganciones_semilleros:
        for val in asignacion2.evaluadores.all():
            lista_valoradores_semilleros.append(
                val.nombres+' '+val.apellidos+' '+val.correo_institicional
            )
            
    tamaño = len(lista_valoradores_ingeniatec)
    set_lista = list(set(lista_valoradores_ingeniatec))
    set_lista_tam = len(list(set(lista_valoradores_ingeniatec)))
    
    tamaño2 = len(lista_valoradores_semilleros)
    set_lista2 = list(set(lista_valoradores_semilleros))
    set_lista_tam2 = len(list(set(lista_valoradores_semilleros)))
    
    #print(f'valoradores asignados semilleros: {tamaño2}')
    #print(f'valoradores asignados unicos semilletos: {set_lista_tam2}')
    
    for i in set_lista:
        cont = 0
        for j in lista_valoradores_ingeniatec:
            if i == j:
                cont += 1
        lista_valoradores_ingeniatec2.append([i, cont])
        
    tam2 = len(lista_valoradores_ingeniatec2)
    
    for i in set_lista2:
        cont = 0
        for j in lista_valoradores_semilleros:
            if i == j:
                cont += 1
        lista_valoradores_semilleros2.append([i, cont])
        
    tam3 = len(lista_valoradores_ingeniatec2)
            
    #print(f'valoradores asignados: {tamaño}')
    #print(f'valoradores asignados unicos: {set_lista_tam}')
    #print(f'valoradores asignados tamaño: {tam2}')
    #print(f'valoradores asignados: {lista_valoradores_ingeniatec2}')
    
    #print(f'valoradores asignados semilleros: {lista_valoradores_semilleros2}')
    
    lista_general = []
    
    for i in range(len(lista_valoradores_semilleros2)):
        for j in range(len(lista_valoradores_ingeniatec2)):
            if lista_valoradores_semilleros2[i][0] == lista_valoradores_ingeniatec2[j][0]:
                lista_general.append([lista_valoradores_semilleros2[i][0], lista_valoradores_semilleros2[i][1], lista_valoradores_ingeniatec2[j][1]]) 
    

    lista_simetrica_general = []
    lista_simetrica = list(set.symmetric_difference(set(set_lista),set(set_lista2)))
    #print('lista simetrica: ', lista_simetrica)
    

    for x in range(len(lista_valoradores_ingeniatec2)):
        for j in lista_simetrica:
            if j == lista_valoradores_ingeniatec2[x][0]:
                lista_simetrica_general.append([j, lista_valoradores_ingeniatec2[x][1]])
                lista_general.append([j, 0, lista_valoradores_ingeniatec2[x][1]]) 

    for x in range(len(lista_valoradores_semilleros2)):
        for j in lista_simetrica:
            if j == lista_valoradores_semilleros2[x][0]:
                lista_simetrica_general.append([j, lista_valoradores_semilleros2[x][1]])
                lista_general.append([j, lista_valoradores_semilleros2[x][1], 0]) 
    
    for m in range(len(lista_general)):
                total =  lista_general[m][1]+lista_general[m][2]
                lista_general[m].append(total) 
    
    #print('lista genenral no ambos: ', lista_simetrica_general)
    #print(f'lista general unica: {lista_general}')
    #print('tamaño general: ', len(lista_general))
    lista_general.sort()
    #print('lista general ordenada: ', lista_general)
    
    context = {
        'usuarios_asignados': lista_general
    }
    
    return  render(request,'evaluaciones/reporte_valoradores_asignados.html', context)
