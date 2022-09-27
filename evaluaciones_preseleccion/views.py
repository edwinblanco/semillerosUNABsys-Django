from email.headerregistry import ContentTypeHeader
from django.shortcuts import render
from operator import itemgetter

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

def reporte_calificaciones_inngeniatec_view(request):
    proyectos_calificados = ValoracionProyectoIngeniatec.objects.all()
    asignaciones = AsignacionEvaluacionInngeniatec.objects.all().order_by('proyecto__categoria')
    
    proyectos_valorados = []
    proyectos_no_valorados = [] 
    
    for proyecto_calificado in proyectos_calificados:
        for proyecto_asigando in asignaciones:
            if proyecto_calificado.proyecto.titulo == proyecto_asigando.proyecto.titulo:
                proyectos_valorados.append(proyecto_calificado)
            else:
                proyectos_no_valorados.append(proyecto_calificado)
            
    reporte_proyecto = []
    list_str_proyectos = []
            
    for proyecto in asignaciones:
        notas = []
        valoradores = []
        proyectocount = ValoracionProyectoIngeniatec.objects.filter(proyecto=proyecto.proyecto)
        for xyz in proyectocount:
            notas.append(xyz.calificacion_final_inngeniatec())
            
        #print(f'Notas: {notas} para: {proyecto.proyecto}')
            
        #for i in range(len(notas)):
            #valoradores.append(None)  
            
        for eva in proyecto.evaluadores.all():
            if ValoracionProyectoIngeniatec.objects.filter(evaluador=eva, proyecto=proyecto.proyecto).exists():
                #print('existe: ',ValoracionProyectoIngeniatec.objects.get(evaluador=eva, proyecto=proyecto.proyecto).calificacion_final_inngeniatec())
                if notas[0] == ValoracionProyectoIngeniatec.objects.get(evaluador=eva, proyecto=proyecto.proyecto).calificacion_final_inngeniatec():
                    valoradores.insert(0, str(eva.nombres)+' '+str(eva.apellidos))
                if len(notas)>1:
                    if notas[0] == notas[1]:
                        valoradores.append(str(eva.nombres)+' '+str(eva.apellidos))
                    else:
                        if notas[1] == ValoracionProyectoIngeniatec.objects.get(evaluador=eva, proyecto=proyecto.proyecto).calificacion_final_inngeniatec():
                            valoradores.insert(1, str(eva.nombres)+' '+str(eva.apellidos))
            else:
                #print('No existe')
                valoradores.append(str(eva.nombres)+' '+str(eva.apellidos))
            #valoradores.append(str(eva.nombres)+' '+str(eva.apellidos))
          
        notas_final = 0.0
        notas_c = len(notas)
        s = 0.0
        if notas:
            for n in notas:
                s += float(n)
            notas_final = s / notas_c 
        else:       
            notas_final = 0.0
           
        dtc = {
            'cantidad': proyectocount.count(),
            'proyecto': proyecto.proyecto,
            'notas': notas,
            'valoradores':valoradores,
            'nota_final': str(notas_final),
            'categoria': proyecto.proyecto.categoria
            } 
        
        if proyecto.proyecto.titulo in list_str_proyectos:
            print('proyecto ya registrado')
        else:    
            reporte_proyecto.append(dtc)
            list_str_proyectos.append(proyecto.proyecto.titulo)

    #for x in reporte_proyecto:
       #print(f'p: {x}\n')
        
                   
    #print('proyectos_calificados: ',len(reporte_proyecto))
    #print('asignaciones: ', asignaciones.count())
    #print('proyectos_valorados: ',len(list(set(proyectos_valorados))))
    #print('proyectos_no_valorados: ', asignaciones.count()-len(list(set(proyectos_valorados))))
    #print('asignaciones: ',asignaciones[0].proyecto)

    reporte_proyecto.sort(key=lambda x: x['nota_final'], reverse=True)
             
    context ={
        'proyectos_calificados': proyectos_calificados,
        'asignaciones':asignaciones,
        'reporte_proyecto':reporte_proyecto,
        #'proyectos_valorados':proyectos_valorados,
    }
    return render(request,'evaluaciones/reporte_calificaciones_inngeniatec.html', context)

def reporte_calificaciones_semilleros_preseleccion_view(request):
    proyectos_calificados = EvaluacionPreseleccion.objects.all()
    asignaciones = AsignacionEvaluacion.objects.all().order_by('proyecto__modalidad_aprticipacion')
    
    proyectos_valorados = []
    proyectos_no_valorados = [] 
    
    for proyecto_calificado in proyectos_calificados:
        for proyecto_asigando in asignaciones:
            if proyecto_calificado.proyecto.titulo == proyecto_asigando.proyecto.titulo:
                proyectos_valorados.append(proyecto_calificado)
            else:
                proyectos_no_valorados.append(proyecto_calificado)
            
    reporte_proyecto = []
    list_str_proyectos = []
            
    for proyecto in asignaciones:
        notas = []
        valoradores = []
        proyectocount = EvaluacionPreseleccion.objects.filter(proyecto=proyecto.proyecto)
        for xyz in proyectocount:
            notas.append(xyz.calificacion_final_30())
            
        for eva in proyecto.evaluadores.all():
            if EvaluacionPreseleccion.objects.filter(evaluador=eva, proyecto=proyecto.proyecto).exists():
                
                print('existe: ',EvaluacionPreseleccion.objects.get(evaluador=eva, proyecto=proyecto.proyecto).calificacion_final_30())
                if notas[0] == EvaluacionPreseleccion.objects.get(evaluador=eva, proyecto=proyecto.proyecto).calificacion_final_30():
                    valoradores.insert(0, str(eva.nombres)+' '+str(eva.apellidos))
                if len(notas)>1:
                    if notas[0] == notas[1]:
                        valoradores.append(str(eva.nombres)+' '+str(eva.apellidos))
                    else:
                        if notas[1] == EvaluacionPreseleccion.objects.get(evaluador=eva, proyecto=proyecto.proyecto).calificacion_final_30():
                            valoradores.insert(1, str(eva.nombres)+' '+str(eva.apellidos))
            else:
                print('No existe')
                valoradores.append(str(eva.nombres)+' '+str(eva.apellidos))
            #valoradores.append(str(eva.nombres)+' '+str(eva.apellidos))
          
        notas_final = 0.0
        notas_c = len(notas)
        s = 0.0
        if notas:
            for n in notas:
                s += float(n)
            notas_final = s / notas_c 
        else:       
            notas_final = 0.0
           
        dtc = {
            'cantidad': proyectocount.count(),
            'proyecto': proyecto.proyecto,
            'notas': notas,
            'valoradores':valoradores,
            'nota_final': str(notas_final),
            'categoria': proyecto.proyecto.modalidad_aprticipacion
            } 
        
        if proyecto.proyecto.titulo in list_str_proyectos:
            print('proyecto ya registrado')
        else:    
            reporte_proyecto.append(dtc)
            list_str_proyectos.append(proyecto.proyecto.titulo)

    #for x in reporte_proyecto:
       #print(f'p: {x}\n')
        
                   
    #print('proyectos_calificados: ',len(reporte_proyecto))
    #print('asignaciones: ', asignaciones.count())
    #print('proyectos_valorados: ',len(list(set(proyectos_valorados))))
    #print('proyectos_no_valorados: ', asignaciones.count()-len(list(set(proyectos_valorados))))
    #print('asignaciones: ',asignaciones[0].proyecto)

    reporte_proyecto.sort(key=lambda x: x['nota_final'], reverse=True)
             
    context ={
        'proyectos_calificados': proyectos_calificados,
        'asignaciones':asignaciones,
        'reporte_proyecto':reporte_proyecto,
        #'proyectos_valorados':proyectos_valorados,
    }
    return render(request,'evaluaciones/reporte_calificaciones_semilleros_preseleccion.html', context)