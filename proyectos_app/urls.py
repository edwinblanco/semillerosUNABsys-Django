
from django.urls import path

from proyectos_app import views

urlpatterns = [
    path('registro-proyecto/', views.registro_proyecto_view, name='registro-proyecto'),
    path('actualizacion_proyecto/<int:pk>', views.registro_proyecto_view, name='actualizacion-proyecto'),
    path('proyecto-actualizado/<int:pk>', views.actualizar_proyecto_view, name='proyecto-actualizado'),
]
