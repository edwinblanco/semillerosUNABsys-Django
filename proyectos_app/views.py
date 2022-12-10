from django.shortcuts import get_object_or_404, redirect, render

from proyectos_app.forms import FormularioRegistroProyecto, FormularioRegistroProyectoInngeniatec
from proyectos_app.models import Proyecto, ProyectoInngeniatec
from django.contrib import messages

from semillero_app.models import Semillero

# Create your views here.
def registro_proyecto_view(request, pk = None):
    
    form = FormularioRegistroProyecto()
    
    if pk is None:
    
        if request.method == 'POST':
            form = FormularioRegistroProyecto(request.POST, request.FILES)
            
            if form.is_valid():
                titulo = form.cleaned_data['titulo']
                periodo = form.cleaned_data['periodo']
                tematica = form.cleaned_data['tematica']
                otro_semillero = form.cleaned_data['otro_semillero']
                semillero1 = form.cleaned_data['semillero']
                url_video = form.cleaned_data['url_video']
                proyecto_pdf = request.FILES['proyecto_pdf'] 
                carta_aval_pdf = request.FILES['carta_aval_pdf']
                modalidad_aprticipacion = form.cleaned_data['modalidad_aprticipacion']
                autores = form.cleaned_data['autores']
                tutores = form.cleaned_data['tutores']
                
                autores._result_cache.append(request.user)
                
                if semillero1 == None and otro_semillero != "":
                    semillero = Semillero.objects.create(nombre = otro_semillero)
                    semillero.save()
                else:
                    semillero = semillero1
                        
                proyecto = Proyecto.objects.create(titulo=titulo, periodo=periodo, semillero = semillero, tematica=tematica, url_video=url_video, proyecto_pdf =proyecto_pdf, carta_aval_pdf = carta_aval_pdf, modalidad_aprticipacion = modalidad_aprticipacion)
                
                proyecto.autores.set(autores)
                proyecto.tutores.set(tutores)
                
                proyecto.save()
                
                messages.success(request, 'Se registró exitosamente el proyecto')
                return redirect('tablero')
            
            else: 
                    messages.error(request, 'error')
                    
        contex = {
            'form': form,
            'actualizar': False
        }        
        
    else:
        proyecto = Proyecto()
        proyecto = get_object_or_404(Proyecto, id=pk)
        print('proyecto: ', proyecto)
        
        form.fields['titulo'].initial = proyecto.titulo
        form.fields['periodo'].initial = proyecto.periodo
        form.fields['tematica'].initial = proyecto.tematica
        form.fields['semillero'].initial = proyecto.semillero
        form.fields['url_video'].initial = proyecto.url_video
        form.fields['proyecto_pdf'].initial = proyecto.proyecto_pdf
        form.fields['carta_aval_pdf'].initial = proyecto.carta_aval_pdf
        form.fields['carta_aval_pdf'].initial = proyecto.carta_aval_pdf
        form.fields['modalidad_aprticipacion'].initial = proyecto.modalidad_aprticipacion
        
        contex = {
            'form': form,
            'actualizar': True,
            'idp': proyecto.id
        }
    
    return render(request,'proyectos/registro_proyecto.html', contex)

def actualizar_proyecto_view(request, pk):
    
    form = FormularioRegistroProyecto()

    if request.method == 'POST':
        form = FormularioRegistroProyecto(request.POST, request.FILES)
        print('dataaaaaa--- ', request.POST)
        
        proyecto = get_object_or_404(Proyecto, id=pk)
        
        if form.is_valid():
            titulo = form.cleaned_data['titulo']
            periodo = form.cleaned_data['periodo']
            tematica = form.cleaned_data['tematica']
            semillero1 = form.cleaned_data['semillero']
            otro_semillero = form.cleaned_data['otro_semillero']
            url_video = form.cleaned_data['url_video']
            proyecto_pdf = request.FILES['proyecto_pdf'] 
            carta_aval_pdf = request.FILES['carta_aval_pdf']
            modalidad_participacion = form.cleaned_data['modalidad_aprticipacion']
            autores = form.cleaned_data['autores']
            tutores = form.cleaned_data['tutores']
            
            if semillero1 == None and otro_semillero != "":
                semillero = Semillero.objects.create(nombre = otro_semillero)
                semillero.save()
            else:
                semillero = semillero1
            
            proyecto.titulo = titulo
            proyecto.periodo = periodo
            proyecto.tematica = tematica
            proyecto.semillero = semillero
            proyecto.url_video = url_video
            proyecto.proyecto_pdf = proyecto_pdf
            proyecto.carta_aval_pdf = carta_aval_pdf
            proyecto.modalidad_aprticipacion = modalidad_participacion
            
            autores._result_cache.append(request.user)
            proyecto.autores.set(autores)
            proyecto.tutores.set(tutores)
            
            proyecto.save()
            
            messages.success(request, 'Se actualizó exitosamente el proyecto')
            return redirect('tablero')
        
        else: 
            messages.error(request, 'Error, campos inválidos. Ningún campo debe estar vacío, sube nuevamente los archivos.')
            return redirect('/proyectos/actualizacion_proyecto/'+str(proyecto.id))
                       
def reporte_proyectos_view(request):
    proyectos = Proyecto.objects.all()
    
    context = {
        'proyectos': proyectos,
        }
    
    return render(request, 'proyectos/reporte_proyectos.html', context)

def registro_proyecto_inngeniatec_view(request, pk = None):
    
    form = FormularioRegistroProyectoInngeniatec()
    
    if pk is None:
    
        if request.method == 'POST':
            form = FormularioRegistroProyectoInngeniatec(request.POST, request.FILES)
            
            if form.is_valid():
                titulo = form.cleaned_data['titulo']
                periodo = form.cleaned_data['periodo']
                email_contacto = form.cleaned_data['email_contacto']
                documento = request.FILES['documento']
                programa_integrantes = form.cleaned_data['programa_integrantes']
                palabras_clave = form.cleaned_data['palabras_clave']
                resumen = form.cleaned_data['resumen']
                url_video = form.cleaned_data['url_video'] 
                categoria = form.cleaned_data['categoria'] 
               
                integrantes = form.cleaned_data['integrantes']
                tutores = form.cleaned_data['tutores']
                
                integrantes._result_cache.append(request.user)
                        
                proyecto = ProyectoInngeniatec.objects.create(titulo=titulo, periodo=periodo, documento=documento, email_contacto=email_contacto, programa_integrantes=programa_integrantes, palabras_clave=palabras_clave, resumen=resumen, url_video=url_video, categoria=categoria)
                
                proyecto.integrantes.set(integrantes)
                proyecto.tutores.set(tutores)
                
                proyecto.save()
                
                messages.success(request, 'Se registró exitosamente el proyecto')
                return redirect('tablero')
            
            else: 
                    messages.error(request, 'error')
                    
        contex = {
            'form': form,
            'actualizar': False
        }        
        
    else:
        proyecto = ProyectoInngeniatec()
        proyecto = get_object_or_404(ProyectoInngeniatec, id=pk)
        print('proyecto: ', proyecto)
        
        form.fields['titulo'].initial = proyecto.titulo
        form.fields['periodo'].initial = proyecto.periodo
        form.fields['email_contacto'].initial = proyecto.email_contacto
        form.fields['documento'].initial = proyecto.documento
        form.fields['programa_integrantes'].initial = proyecto.programa_integrantes
        form.fields['palabras_clave'].initial = proyecto.palabras_clave
        form.fields['resumen'].initial = proyecto.resumen
        form.fields['categoria'].initial = proyecto.categoria
        form.fields['url_video'].initial = proyecto.url_video
        
        contex = {
            'form': form,
            'actualizar': True,
            'idp': proyecto.id
        }
    
    return render(request,'proyectos/registro_proyecto_inngeniatec.html', contex)

def actualizar_proyecto_inngeniatec_view(request, pk):
    
    form = FormularioRegistroProyectoInngeniatec()

    if request.method == 'POST':
        form = FormularioRegistroProyectoInngeniatec(request.POST, request.FILES)
        
        proyecto = get_object_or_404(ProyectoInngeniatec, id=pk)
        
        if form.is_valid():
            titulo = form.cleaned_data['titulo']
            periodo = form.cleaned_data['periodo']
            email_contacto = form.cleaned_data['email_contacto']
            documento = request.FILES['documento'] 
            programa_integrantes = form.cleaned_data['programa_integrantes']
            palabras_clave = form.cleaned_data['palabras_clave']
            resumen = form.cleaned_data['resumen']
            url_video = form.cleaned_data['url_video'] 
            categoria = form.cleaned_data['categoria'] 
            
            integrantes = form.cleaned_data['integrantes']
            tutores = form.cleaned_data['tutores']
            
            proyecto.titulo = titulo
            proyecto.periodo = periodo
            proyecto.email_contacto = email_contacto
            proyecto.documento = documento
            programa_integrantes = programa_integrantes
            proyecto.url_video = url_video
            proyecto.palabras_clave = palabras_clave
            proyecto.resumen = resumen
            proyecto.categoria = categoria
            
            integrantes._result_cache.append(request.user)
            proyecto.integrantes.set(integrantes)
            proyecto.tutores.set(tutores)
            
            proyecto.save()
            
            messages.success(request, 'Se actualizó exitosamente el proyecto')
            return redirect('tablero')
        
        else: 
            messages.error(request, 'Error, campos inválidos. Ningún campo debe estar vacío, sube nuevamente los archivos.')
            return redirect('/proyectos/actualizacion_proyecto_inngeniatec/'+str(proyecto.id))