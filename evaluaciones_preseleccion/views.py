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
from evaluaciones_preseleccion.models import EvaluacionPreseleccion, ValoracionProyectoIngeniatec, ValoracionProyectoIngeniatecPresencial

from proyectos_app.models import Periodo, Proyecto, ProyectoInngeniatec

# Create your views here.
def seleccionar_periodo_reporte_inngeniatec_view(request):
    periodos = Periodo.objects.all()
    context={
        'periodos':periodos,
    }
    return render(request,'evaluaciones/asignacion_periodo_reporte_inngeniatec.html', context)

def seleccionar_periodo_reporte_semilleros_view(request):
    periodos = Periodo.objects.all()
    context={
        'periodos':periodos,
    }
    return render(request,'evaluaciones/asignacion_periodo_reporte_semilleros.html', context)


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

def registro_calificacion_inngeniatec_view(request, pk = None, pk_calificacion = None, face = None):
    
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
                        
                if face == 0:
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
                    calificacion = ValoracionProyectoIngeniatecPresencial.objects.create(
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
        'face': face,
    }        
    
    return render(request,'evaluaciones/registro_evaluacion_inngeniatec.html', contex)

def reporte_calificaciones_inngeniatec_view(request):
    
    periodo_slug = request.GET.get('select_periodo')
    
    if periodo_slug is None:
        proyectos_calificados = ValoracionProyectoIngeniatec.objects.all()
        proyectos_calificados_presencial = ValoracionProyectoIngeniatecPresencial.objects.all()
        asignaciones = AsignacionEvaluacionInngeniatec.objects.all().order_by('proyecto__categoria')
    else:
        periodo=get_object_or_404(Periodo, slug=periodo_slug)
        proyectos_calificados = ValoracionProyectoIngeniatec.objects.filter(proyecto__periodo__slug=periodo_slug)
        proyectos_calificados_presencial = ValoracionProyectoIngeniatecPresencial.objects.filter(proyecto__periodo__slug=periodo_slug)
        asignaciones = AsignacionEvaluacionInngeniatec.objects.filter(proyecto__periodo__slug=periodo_slug).order_by('proyecto__categoria')
    
    proyectos_valorados = []
    proyectos_no_valorados = [] 
    
    proyectos_valorados_presencial = []
    proyectos_no_valorados_presencial = [] 
    
    for proyecto_calificado in proyectos_calificados:
        for proyecto_asigando in asignaciones:
            if proyecto_calificado.proyecto.titulo == proyecto_asigando.proyecto.titulo:
                proyectos_valorados.append(proyecto_calificado)
            else:
                proyectos_no_valorados.append(proyecto_calificado)
                
    for proyecto_calificado in proyectos_calificados_presencial:
        for proyecto_asigando in asignaciones:
            if proyecto_calificado.proyecto.titulo == proyecto_asigando.proyecto.titulo:
                proyectos_valorados_presencial.append(proyecto_calificado)
            else:
                proyectos_no_valorados_presencial.append(proyecto_calificado)
            
    reporte_proyecto = []
    list_str_proyectos = []
            
    for proyecto in asignaciones:
        notas = []
        notas_presencial = []
        valoradores = []
        
        proyectocount = ValoracionProyectoIngeniatec.objects.filter(proyecto=proyecto.proyecto)
        for xyz in proyectocount:
            notas.append(xyz.calificacion_final_inngeniatec())
            
        proyectocount2 = ValoracionProyectoIngeniatecPresencial.objects.filter(proyecto=proyecto.proyecto)
        for xyz in proyectocount2:
            notas_presencial.append(xyz.calificacion_final_inngeniatec_presencial())
            
        for eva in proyecto.evaluadores.all():
            
            if ValoracionProyectoIngeniatec.objects.filter(evaluador=eva, proyecto=proyecto.proyecto).exists():
                proyecto_consulta = ValoracionProyectoIngeniatec.objects.filter(evaluador=eva, proyecto=proyecto.proyecto)[:1].get()
                #print('existe: ',ValoracionProyectoIngeniatec.objects.get(evaluador=eva, proyecto=proyecto.proyecto).calificacion_final_inngeniatec())
                if notas[0] == proyecto_consulta.calificacion_final_inngeniatec():
                    valoradores.insert(0, str(eva.nombres)+' '+str(eva.apellidos))
                if len(notas)>1:
                    if notas[0] == notas[1]:
                        valoradores.append(str(eva.nombres)+' '+str(eva.apellidos))
                    else:
                        if notas[1] == proyecto_consulta.calificacion_final_inngeniatec():
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
            
        notas_final_presencial = 0.0
        notas_c_presencial = len(notas_presencial)
        s_presencial = 0.0
        if notas_presencial:
            for n in notas_presencial:
                s_presencial += float(n)
            notas_final_presencial = s_presencial / notas_c_presencial 
        else:       
            notas_final_presencial = 0.0
            
        autores = []    
        for autor in proyecto.proyecto.integrantes.all():
            autores.append({'nombre':autor.nombres,
                            'apellido':autor.apellidos,
                            'correo':autor.correo_institicional,
                            'universidad': autor.universidad
                            })
            
        tutores = []  
        for tutor in proyecto.proyecto.tutores.all():
           tutores.append({
               'nombre': tutor.nombres,
               'apellido': tutor.apellidos,
               'correo': tutor.correo_institicional
           }) 
           
        dtc = {
            'cantidad': proyectocount.count(),
            'proyecto': proyecto.proyecto,
            'notas': notas,
            'notas_presencial': notas_presencial,
            'notas_final_presencial': notas_final_presencial,
            'valoradores':valoradores,
            'nota_final': str("{0:.1f}".format(notas_final)),
            'categoria': proyecto.proyecto.categoria,
            'correo': proyecto.proyecto.email_contacto,
            'integrantes': autores,
            'tutores': tutores,
            } 
        
        if proyecto.proyecto.titulo in list_str_proyectos:
            print('proyecto ya registrado')
        else:    
            reporte_proyecto.append(dtc)
            list_str_proyectos.append(proyecto.proyecto.titulo)

    reporte_proyecto.sort(key=lambda x: x['notas_final_presencial'], reverse=True)
             
    context ={
        'proyectos_calificados': proyectos_calificados,
        'asignaciones':asignaciones,
        'reporte_proyecto':reporte_proyecto,
        'periodo':periodo,
    }
    return render(request,'evaluaciones/reporte_calificaciones_inngeniatec.html', context)

def reporte_calificaciones_semilleros_preseleccion_view(request):
    
    periodo_slug = request.GET.get('select_periodo')
    
    if periodo_slug is None:
        proyectos_calificados = EvaluacionPreseleccion.objects.all()
        asignaciones = AsignacionEvaluacion.objects.all().order_by('proyecto__modalidad_aprticipacion')
    else:
        periodo=get_object_or_404(Periodo, slug=periodo_slug)
        proyectos_calificados = EvaluacionPreseleccion.objects.filter(proyecto__periodo__slug=periodo_slug)
        asignaciones = AsignacionEvaluacion.objects.filter(proyecto__periodo__slug=periodo_slug).order_by('proyecto__modalidad_aprticipacion')
    
    
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
        notas_oral = []
        valoradores = []
        observaciones = []
        observaciones2 = []
        proyectocount = EvaluacionPreseleccion.objects.filter(proyecto=proyecto.proyecto)
        for xyz in proyectocount:
            notas.append(xyz.calificacion_final_30())
            observaciones.append(xyz.observaciones1)
            observaciones2.append(xyz.observaciones2)
            
        proyectocount2 = EvaluacionOral.objects.filter(proyecto=proyecto.proyecto)
        for xyz2 in proyectocount2:
            notas_oral.append(xyz2.calificacion_final_70())
            
        for eva in proyecto.evaluadores.all():
            if EvaluacionPreseleccion.objects.filter(evaluador=eva, proyecto=proyecto.proyecto).exists():
                proyecto_consulta = EvaluacionPreseleccion.objects.filter(evaluador=eva, proyecto=proyecto.proyecto)[:1].get()
                #print('existe: ',EvaluacionPreseleccion.objects.get(evaluador=eva, proyecto=proyecto.proyecto).calificacion_final_30())
                if notas[0] == proyecto_consulta.calificacion_final_30():
                    valoradores.insert(0, str(eva.nombres)+' '+str(eva.apellidos))
                if len(notas)>1:
                    if notas[0] == notas[1]:
                        valoradores.append(str(eva.nombres)+' '+str(eva.apellidos))
                    else:
                        if notas[1] == proyecto_consulta.calificacion_final_30():
                            valoradores.insert(1, str(eva.nombres)+' '+str(eva.apellidos))
            else:
                #print('No existe')
                valoradores.append(str(eva.nombres)+' '+str(eva.apellidos))
          
        notas_final = 0.0
        notas_c = len(notas)
        s = 0.0
        if notas:
            for n in notas:
                s += float(n)
            notas_final = s / notas_c 
        else:       
            notas_final = 0.0
            
        notas_final_oral = 0.0
        notas_c_oral = len(notas_oral)
        s_oral = 0.0
        if notas_oral:
            for n in notas_oral:
                s_oral += float(n)
            notas_final_oral = s_oral / notas_c_oral 
        else:       
            notas_final_oral = 0.0
            
        nota_final_100 = notas_final + notas_final_oral
            
        autores = []    
        for autor in proyecto.proyecto.autores.all():
            autores.append({'nombre':autor.nombres,
                            'apellido':autor.apellidos,
                            'correo':autor.correo_institicional,
                            'universidad': autor.universidad
                            })
            
        tutores = []  
        for tutor in proyecto.proyecto.tutores.all():
           tutores.append({
               'nombre': tutor.nombres,
               'apellido': tutor.apellidos,
               'correo': tutor.correo_institicional
           }) 
            
           
        dtc = {
            'cantidad': proyectocount.count(),
            'proyecto': proyecto.proyecto,
            'notas': notas,
            'valoradores':valoradores,
            'nota_final': str("{0:.2f}".format(notas_final)),
            'nota_final_oral': str("{0:.2f}".format(notas_final_oral)),
            'nota_final_100': str("{0:.2f}".format(nota_final_100)),
            'categoria': proyecto.proyecto.modalidad_aprticipacion,
            'autores': autores,
            'tutores': tutores,
            'tematica': proyecto.proyecto.tematica,
            'universidad': autores[0]['universidad'],
            'observaciones': observaciones,
            'observaciones2': observaciones2
            } 
        
        if proyecto.proyecto.titulo in list_str_proyectos:
            print('proyecto ya registrado')
        else:    
            reporte_proyecto.append(dtc)
            list_str_proyectos.append(proyecto.proyecto.titulo)        

    reporte_proyecto.sort(key=lambda x: x['nota_final_100'], reverse=True)
             
    context ={
        'proyectos_calificados': proyectos_calificados,
        'asignaciones':asignaciones,
        'reporte_proyecto':reporte_proyecto,
        'periodo':periodo,
    }
    return render(request,'evaluaciones/reporte_calificaciones_semilleros_preseleccion.html', context)