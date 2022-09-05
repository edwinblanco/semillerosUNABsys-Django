from django.shortcuts import render

from django.shortcuts import redirect, render
from django.contrib import messages

from asignacion_evaluador.forms import FormularioAsignarValorador
from asignacion_evaluador.models import AsignacionEvaluacion

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