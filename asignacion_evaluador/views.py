from django.shortcuts import render

from django.shortcuts import redirect, render
from django.contrib import messages
from django.core.mail import EmailMessage, EmailMultiAlternatives
from django.template.loader import render_to_string

from asignacion_evaluador.forms import FormularioAsignarValorador, FormularioAsignarValoradorInngeniatec
from asignacion_evaluador.models import AsignacionEvaluacion, AsignacionEvaluacionInngeniatec

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

