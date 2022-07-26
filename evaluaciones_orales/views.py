from enum import auto
from django.shortcuts import get_object_or_404, redirect, render
from asignacion_evaluador.models import AsignacionEvaluacion
from evaluaciones_orales.forms import FormularioCalificacionOral
from evaluaciones_orales.models import EvaluacionOral
from django.contrib import messages

from proyectos_app.models import Proyecto

# Create your views here.
def registro_calificacion_oral_view(request, pk = None, pk_calificacion = None):
    
    form = FormularioCalificacionOral()
    
    proyecto = Proyecto()
    proyecto = Proyecto.objects.get(id=pk)
    
    if request.method == 'POST':
        form = FormularioCalificacionOral(request.POST)
        
        calificaciones_oral_count = EvaluacionOral.objects.filter(proyecto__id = pk, evaluador = request.user ).count()
        
        
        if calificaciones_oral_count <1:
        
            if form.is_valid():
                dominio_tematico = form.cleaned_data['dominio_tematico']
                expresion_oral = form.cleaned_data['expresion_oral']
                creatividad_diseño = form.cleaned_data['creatividad_diseño']
                observaciones = form.cleaned_data['observaciones']
                
                
                evaluador = request.user
                is_calificado = True
                        
                calificacion_oral = EvaluacionOral.objects.create(dominio_tematico=dominio_tematico, expresion_oral = expresion_oral, creatividad_diseño = creatividad_diseño, observaciones=observaciones, evaluador = evaluador, is_calificado = is_calificado, proyecto = proyecto)
                calificacion_oral.save()
            
                asignacion = get_object_or_404(AsignacionEvaluacion, id = pk_calificacion)
                asignacion.asignacion_calificada1 = True
                asignacion.save()
                
                
                messages.success(request, 'Se registró exitosamente la calificación')
                return redirect('tablero-evaluador')
            
            else: 
                messages.error(request, 'error')
                
        else:
            messages.error(request, 'El proyecto ya ha sido calificado')    
            return redirect('tablero-evaluador')
                
    contex = {
        'form': form,
        'idp': pk,
        'idc': pk_calificacion,
        'proyecto': proyecto,
    }        
    
    return render(request,'evaluaciones/registro_evaluacion_oral.html', contex)