from django.urls import path

from asignacion_evaluador import views

urlpatterns = [
    path('seleccionar_periodo_semilleros/', views.seleccionar_periodo_view, name='seleccionar-periodo-semilleros'),
    path('seleccionar_periodo_inngeniatec/', views.seleccionar_periodo_inngeniatec_view, name='seleccionar-periodo-inngeniatec'),
    
    path('tablero/<str:periodo_slug>', views.asignar_valorador_view, name='asigancion-valorador-proyecto'),
    path('tablero-periodo/', views.asignar_valorador_view, name='asigancion-valorador-proyecto-periodo'),
    
    path('tablero-inngeniatec/<str:periodo_slug>', views.asignar_valorador_inngeniatec_view, name='asigancion-valorador-proyecto-inngeniatec'),
    path('tablero-periodo-inngeniatec/', views.asignar_valorador_inngeniatec_view, name='asigancion-valorador-proyecto-inngeniatec-periodo'),
    
    path('reporte-valoradores-asignados/', views.reporte_valoradores_asignados_view, name='reporte-valoradores-asignados'),
    path('ordenar-tabla-asignaciones-semilleros/<str:periodo_slug>', views.ordenar_tabla_asignaciones_semilleros_view, name='ordenar-tabla-asignaciones-semilleros'),
    path('actualizar-asignacion-semilleros/<str:periodo_slug>/<int:pk>', views.asignar_valorador_view, name='actualizar-asignacion-semilleros'),
    path('actualizacion-asignacion-semilleros/<str:periodo_slug>/<int:pk>', views.actualizar_asignacion_semilleros_view, name='actualizacion-asignacion-semilleros'),
]
