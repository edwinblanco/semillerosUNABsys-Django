from django.shortcuts import render

# Create your views here.
from enum import auto
from django.shortcuts import get_object_or_404, redirect, render
from asignacion_evaluador.models import AsignacionEvaluacion, AsignacionEvaluacionInngeniatec
from evaluaciones_orales.forms import FormularioCalificacionOral
from evaluaciones_orales.models import EvaluacionOral
from django.contrib import messages
from evaluaciones_preseleccion.forms import FormularioCalificacionPreseleccion, FormularioValoracionProyectoIngeniatec
from evaluaciones_preseleccion.models import EvaluacionPreseleccion, ValoracionProyectoIngeniatec

from proyectos_app.models import Proyecto, ProyectoInngeniatec

# Create your views here.
def registro_calificacion_preseleccion_view(request, pk = None, pk_calificacion = None):
    
    form = FormularioCalificacionPreseleccion()
    
    proyecto = Proyecto()
    proyecto = Proyecto.objects.get(id=pk)
    
    if request.method == 'POST':
        form = FormularioCalificacionPreseleccion(request.POST)
        
        calificaciones_pres_count = EvaluacionPreseleccion.objects.filter(proyecto__id = pk, evaluador = request.user ).count()
        
        if calificaciones_pres_count <1:
        
            if form.is_valid():
                presentacion_escrita = form.cleaned_data['presentacion_escrita']
                estructura_texto = form.cleaned_data['estructura_texto']
                fuentes_consultadas = form.cleaned_data['fuentes_consultadas']
                observaciones1 = form.cleaned_data['observaciones1']
                resumen_introduccion = form.cleaned_data['resumen_introduccion']
                objetivos = form.cleaned_data['objetivos']
                pertinencia_innovacion = form.cleaned_data['pertinencia_innovacion']
                referente_teorico = form.cleaned_data['referente_teorico']
                propuesta_metodologia = form.cleaned_data['propuesta_metodologia']
                resultados_preliminares = form.cleaned_data['resultados_preliminares']
                discucion_preliminar = form.cleaned_data['discucion_preliminar']
                observaciones2= form.cleaned_data['observaciones2']
                
                evaluador = request.user
                is_calificado = True
                        
                calificacion_pres = EvaluacionPreseleccion.objects.create(
                    presentacion_escrita=presentacion_escrita, 
                    estructura_texto  = estructura_texto,
                    fuentes_consultadas = fuentes_consultadas,
                    observaciones1=observaciones1, 
                    resumen_introduccion = resumen_introduccion,
                    objetivos = objetivos,
                    pertinencia_innovacion = pertinencia_innovacion,
                    referente_teorico = referente_teorico,
                    propuesta_metodologia = propuesta_metodologia,
                    resultados_preliminares = resultados_preliminares,
                    discucion_preliminar = discucion_preliminar,
                    observaciones2 = observaciones2,
                    
                    evaluador = evaluador, 
                    is_calificado = is_calificado, 
                    proyecto = proyecto)
                
                calificacion_pres.save()
                
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
    
    return render(request,'evaluaciones/registro_evaluacion_preseleccion.html', contex)


def registro_calificacion_inngeniatec_view(request, pk = None, pk_calificacion = None):
    
    form = FormularioValoracionProyectoIngeniatec()
    
    proyecto = ProyectoInngeniatec()
    proyecto = ProyectoInngeniatec.objects.get(id=pk)
    
    if request.method == 'POST':
        form = FormularioValoracionProyectoIngeniatec(request.POST)
                
        if form.is_valid():
                aplicacion_escenario_real = form.cleaned_data['aplicacion_escenario_real']
                originadidad_innovacion = form.cleaned_data['originadidad_innovacion']
                calidad_tecnica = form.cleaned_data['calidad_tecnica']
                estudio_viablididad = form.cleaned_data['estudio_viablididad']
                
                if estudio_viablididad == None:
                    estudio_viablididad = 0.0
                
                evaluador = request.user
                is_calificado = True
                        
                calificacion = ValoracionProyectoIngeniatec.objects.create(
                    aplicacion_escenario_real = aplicacion_escenario_real, 
                    originadidad_innovacion = originadidad_innovacion,
                    calidad_tecnica = calidad_tecnica,
                    estudio_viablididad = estudio_viablididad, 
                    evaluador = evaluador, 
                    is_calificado = is_calificado, 
                    proyecto = proyecto)
                
                calificacion.save()
                
                messages.success(request, 'Se registró exitosamente la valoración')
                return redirect('tablero-evaluador-inngeniatec')
            
        else: 
            messages.error(request, 'error')  
                
    contex = {
        'form': form,
        'proyecto': proyecto,
        'idp': pk,
        'idc': pk_calificacion,
    }        
    
    return render(request,'evaluaciones/registro_evaluacion_inngeniatec.html', contex)