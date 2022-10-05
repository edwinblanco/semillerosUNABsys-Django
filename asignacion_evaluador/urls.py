from django.urls import path

from asignacion_evaluador import views

urlpatterns = [
    path('tablero/', views.asignar_valorador_view, name='asigancion-valorador-proyecto'),
    path('tablero-inngeniatec/', views.asignar_valorador_inngeniatec_view, name='asigancion-valorador-proyecto-inngeniatec'),
    path('reporte-valoradores-asignados/', views.reporte_valoradores_asignados_view, name='reporte-valoradores-asignados'),
    path('ordenar-tabla-asignaciones-semilleros/', views.ordenar_tabla_asignaciones_semilleros_view, name='ordenar-tabla-asignaciones-semilleros'),
    path('actualizar-asignacion-semilleros/<int:pk>', views.asignar_valorador_view, name='actualizar-asignacion-semilleros'),
    path('actualizacion-asignacion-semilleros/<int:pk>', views.actualizar_asignacion_semilleros_view, name='actualizacion-asignacion-semilleros'),

]
