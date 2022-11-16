
from django.contrib import admin
from django.urls import path

from usuarios_app import views

urlpatterns = [
    path('login_page/', views.login_view_page, name='login-page'),
    path('login/<int:valorador>', views.login_view, name='login'),
    path('loguot/', views.loguot_view, name='loguot'),
    path('registro/', views.registro_view, name='registro'),
    path('guia/', views.guia_view, name='guia'),
    path('tablero/', views.tablero_view, name='tablero'),
    path('tablero-tutor/', views.tablero_tutor_view, name='tablero-tutor'),
    path('tablero-evaluador/', views.tablero_evaluador_view, name='tablero-evaluador'),
    path('tablero-evaluador-inngeniatec/', views.tablero_evaluador_inngeniatec_view, name='tablero-evaluador-inngeniatec'),
    path('activate/<uidb64>/<token>/', views.activate_view, name='activate'),
    path('contrasena-olvidada/', views.contrasena_olvidada_view, name='contrasena-olvidada'),
    path('resetcontrasena-validate/<uidb64>/<token>/', views.resetcontrasena_validate_view, name='resetcontrasena-validate'),
    path('resetear-contrasena/', views.resetearContrasena_view, name='resetearContrasena'),
    path('modal-calificaciones/<int:pk>', views.resumen_calificaciones_view, name='modal-calificaciones'),
    path('reporte-usuarios/', views.reporte_usuarios_view, name='reporte-usuarios'),
    path('tablero-inicial-valorador/', views.tablero_inicial_valorador_view, name='tablero-inicial-valorador'),
    path('valoradores-sin-valorar/', views.valoradores_sin_evaluar_view, name='valoradores-sin-valorar'),
]

