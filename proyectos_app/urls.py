
from django.urls import path

from proyectos_app import views

urlpatterns = [
    path('registro-proyecto/', views.registro_proyecto_view, name='registro-proyecto'),
    path('registro-proyecto-inngeniatec/', views.registro_proyecto_inngeniatec_view, name='registro-proyecto-inngeniatec'),
    path('actualizacion_proyecto/<int:pk>', views.registro_proyecto_view, name='actualizacion-proyecto'),
    path('actualizacion_proyecto_inngeniatec/<int:pk>', views.registro_proyecto_inngeniatec_view, name='actualizacion-proyecto-inngeniatec'),
    path('proyecto-actualizado/<int:pk>', views.actualizar_proyecto_view, name='proyecto-actualizado'),
    path('proyecto-actualizado-inngeniatec/<int:pk>', views.actualizar_proyecto_inngeniatec_view, name='proyecto-actualizado-inngeniatec'),
    path('reporte-proyectos/', views.reporte_proyectos_view, name='reporte-proyectos'),
]
