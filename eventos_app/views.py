from django.http import HttpResponse
from django.shortcuts import render
from django.contrib import admin
from django.db import models

from dynamic_models.models import ModelSchema, FieldSchema

# Create your views here.
def crear_evento_view(request, nombre_formulario = None):
    if nombre_formulario is not None:
        nombre_formulario_str = str(nombre_formulario)
        evento = ModelSchema.objects.create(name=nombre_formulario_str)

        return HttpResponse(f'<h1>Formulario creado: {evento} </h1>')
    else:
        return HttpResponse('<h1>Error</h1>')
    
def crear_evento_prueba_view(request):
    return HttpResponse('<h1>Disponible proximamente</h1>')