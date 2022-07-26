
from django.contrib import admin
from django.urls import path

from usuarios_app import views

urlpatterns = [
    path('login_page/', views.login_view_page, name='login-page'),
    path('login/', views.login_view, name='login'),
    path('loguot/', views.loguot_view, name='loguot'),
    path('registro/', views.registro_view, name='registro'),
    path('tablero/', views.tablero_view, name='tablero'),
    path('tablero-evaluador/', views.tablero_evaluador_view, name='tablero-evaluador'),
    path('activate/<uidb64>/<token>/', views.activate_view, name='activate'),
    path('modal-calificaciones/<int:pk>', views.resumen_calificaciones_view, name='modal-calificaciones'),
]

