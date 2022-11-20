from django.urls import path

from evaluaciones_preseleccion import views

urlpatterns = [
    path('registro-evaluacion-inngeniatec/<int:pk>/<int:pk_calificacion>/<int:face>', views.registro_calificacion_inngeniatec_view, name='registro-evaluacion-inngeniatec'),
    path('registro-evaluacion-preseleccion/<int:pk>/<int:pk_calificacion>', views.registro_calificacion_preseleccion_view, name='registro-evaluacion-preseleccion'),
    path('reporte-calificaciones-emilleros-preseleccion/', views.reporte_calificaciones_semilleros_preseleccion_view, name='reporte-calificaciones-emilleros-preseleccion'),
    path('reporte-periodo-semilleros/', views.seleccionar_periodo_reporte_semilleros_view, name='reporte-periodo-semilleros'),
    path('reporte-calificaciones-inngeniatec/', views.reporte_calificaciones_inngeniatec_view, name='reporte-calificaciones-inngeniatec'),
    path('reporte-periodo-inngeniatec/', views.seleccionar_periodo_reporte_inngeniatec_view, name='reporte-periodo-inngeniatec'),
]
