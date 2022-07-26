from django.urls import path

from evaluaciones_orales import views

urlpatterns = [
    path('registro-evaluacion-oral/<int:pk>/<int:pk_calificacion>', views.registro_calificacion_oral_view, name='registro-evaluacion-oral'),
]