from django.shortcuts import render

from django.shortcuts import redirect, render
from django.contrib import messages
from django.core.mail import EmailMessage, EmailMultiAlternatives
from django.template.loader import render_to_string

from asignacion_evaluador.forms import FormularioAsignarValorador, FormularioAsignarValoradorInngeniatec
from asignacion_evaluador.models import AsignacionEvaluacion, AsignacionEvaluacionInngeniatec
from evaluaciones_preseleccion.models import ValoracionProyectoIngeniatec

# Create your views here.
def asignar_valorador_view(request, pk = None):
    
    form = FormularioAsignarValorador()
    
    if request.method == 'POST':
        form = FormularioAsignarValorador(request.POST)
        
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
                return redirect('asigancion-valorador-proyecto')
        
        else: 
            messages.error(request, 'error')
                
    asignaciones = AsignacionEvaluacion.objects.all().order_by('-fecha_asignacion')
    
    contex = {
        'form': form,
        'asignaciones': asignaciones,
    }        

    return render(request,'evaluaciones/asignacion_valorador.html', contex)


def asignar_valorador_inngeniatec_view(request, pk = None):
    
    form = FormularioAsignarValoradorInngeniatec()
    
    if request.method == 'POST':
        form = FormularioAsignarValoradorInngeniatec(request.POST)
        
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
                return redirect('asigancion-valorador-proyecto-inngeniatec')
        
        else: 
            messages.error(request, 'error')
                
    asignaciones = AsignacionEvaluacionInngeniatec.objects.all().order_by('-fecha_asignacion')
    
    contex = {
        'form': form,
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
