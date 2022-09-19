from django.urls import path

from asignacion_evaluador import views

urlpatterns = [
    path('tablero/', views.asignar_valorador_view, name='asigancion-valorador-proyecto'),
    path('tablero-inngeniatec/', views.asignar_valorador_inngeniatec_view, name='asigancion-valorador-proyecto-inngeniatec'),
]
