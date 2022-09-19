from django.urls import path

from evaluaciones_preseleccion import views

urlpatterns = [
    path('registro-evaluacion-inngeniatec/<int:pk>/<int:pk_calificacion>', views.registro_calificacion_inngeniatec_view, name='registro-evaluacion-inngeniatec'),
    path('registro-evaluacion-preseleccion/<int:pk>/<int:pk_calificacion>', views.registro_calificacion_preseleccion_view, name='registro-evaluacion-preseleccion'),
]