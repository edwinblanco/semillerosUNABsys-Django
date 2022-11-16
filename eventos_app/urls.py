from django.urls import path
from eventos_app import views

urlpatterns = [
    path('crear_evento/<str:nombre_formulario>/', views.crear_evento_view, name='crear_evento'),
    path('crear_evento_prueba/', views.crear_evento_prueba_view, name='crear_evento_prueba'),
]
