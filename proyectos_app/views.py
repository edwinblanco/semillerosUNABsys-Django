import re
from django.http import QueryDict
from django.shortcuts import get_object_or_404, redirect, render

from proyectos_app.forms import FormularioRegistroProyecto
from proyectos_app.models import Proyecto
from django.contrib import messages

# Create your views here.
def registro_proyecto_view(request, pk = None):
    
    form = FormularioRegistroProyecto()
    
    if pk is None:
    
        if request.method == 'POST':
            form = FormularioRegistroProyecto(request.POST, request.FILES)
            print('dataaaaaa--- ', request.POST)
            
            if form.is_valid():
                titulo = form.cleaned_data['titulo']
                tematica = form.cleaned_data['tematica']
                semillero = form.cleaned_data['semillero']
                url_video = form.cleaned_data['url_video']
                proyecto_pdf = request.FILES['proyecto_pdf'] 
                carta_aval_pdf = request.FILES['carta_aval_pdf']
                modalidad_aprticipacion = form.cleaned_data['modalidad_aprticipacion']
                autores = form.cleaned_data['autores']
                tutores = form.cleaned_data['tutores']
                
                autores._result_cache.append(request.user)
                        
                proyecto = Proyecto.objects.create(titulo=titulo, semillero = semillero, tematica=tematica, url_video=url_video, proyecto_pdf =proyecto_pdf, carta_aval_pdf = carta_aval_pdf, modalidad_aprticipacion = modalidad_aprticipacion)
                
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
            tematica = form.cleaned_data['tematica']
            semillero = form.cleaned_data['semillero']
            url_video = form.cleaned_data['url_video']
            proyecto_pdf = request.FILES['proyecto_pdf'] 
            carta_aval_pdf = request.FILES['carta_aval_pdf']
            modalidad_participacion = form.cleaned_data['modalidad_aprticipacion']
            autores = form.cleaned_data['autores']
            tutores = form.cleaned_data['tutores']
            
            proyecto.titulo = titulo
            proyecto.tematica = tematica
            proyecto.semillero = semillero
            proyecto.url_video = url_video
            proyecto.proyecto_pdf = proyecto_pdf
            proyecto.carta_aval_pdf = carta_aval_pdf
            proyecto.modalidad_aprticipacion = modalidad_participacion
            
            proyecto.autores.set(autores)
            proyecto.tutores.set(tutores)
            
            proyecto.save()
            
            messages.success(request, 'Se actualizó exitosamente el proyecto')
            return redirect('tablero')
        
        else: 
            messages.error(request, 'error')
            return redirect('/proyectos/actualizacion_proyecto/'+str(proyecto.id))
                