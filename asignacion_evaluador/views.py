from django.shortcuts import render

from django.shortcuts import redirect, render
from django.contrib import messages

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

