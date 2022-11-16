from django.db import models

# Create your models here.
class ConfigPaginaSemilleros(models.Model):
    titulo_principal = models.CharField(max_length=1000)
    terminos_convocatoria_url = models.URLField(max_length=250)
    plantilla_inscripcion_url = models.URLField(max_length=250)
    formato_carta_aval_url = models.URLField(max_length=250)
    video_guia_inscripcion_url = models.URLField(max_length=250)
    titulo_secundario1 = models.CharField(max_length=1000)
    parrafo_secundario1 = models.TextField(max_length=10000)
    titulo_secundario2 = models.CharField(max_length=1000)
    parrafo_secundario2 = models.TextField(max_length=10000)
    correo_contacto = models.CharField(max_length=200)

    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    is_active = models.BooleanField(default=True)
    
    def __str__(self):
        return self.titulo_principal
    

class FechaSemilleros(models.Model):
    descripcion = models.CharField(max_length=1000)
    fecha = models.DateField()

    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    is_active = models.BooleanField(default=True)
    
    def __str__(self):
        return self.descripcion