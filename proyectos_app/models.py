from django.db import models

from tematica_app.models import Tematica
from semillero_app.models import Semillero
from usuarios_app.models import Usuario

# Create your models here.
class Proyecto(models.Model):
    titulo = models.CharField(max_length=1000)
    modalidad_aprticipacion = models.CharField(max_length=1000)
    tematica = models.ForeignKey(Tematica, on_delete=models.CASCADE, null=True)
    semillero = models.ForeignKey(Semillero, on_delete=models.CASCADE, null=True)
    url_video = models.URLField(max_length=1000)
    proyecto_pdf = models.FileField(upload_to='files/proyectos', max_length=1000)
    carta_aval_pdf = models.FileField(upload_to='files/cartas_Aval', max_length=1000)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    es_finalista = models.BooleanField(default=False)
    
    autores = models.ManyToManyField(Usuario)
    tutores = models.ManyToManyField(Usuario, related_name='tutores')
    
    def obtener_autores(self):        
        return [str(p) for p in self.autores.all()]
    
    def obtener_tutores(self):        
        return ", ".join([str(p) for p in self.tutores.all()])
    
    def obtener_universidad(self):
        return str(self.autores.all()[0].universidad)
    
    def __str__(self):
        return self.titulo
    
    class Meta:
        ordering = ('titulo',)
        verbose_name = "Proyecto de semillero"
        verbose_name_plural = "Proyectos de Semilleros"
        
class ProyectoInngeniatec(models.Model):
    titulo = models.CharField(max_length=10000)
    email_contacto = models.CharField(max_length=1000, default=None, blank=True, null=True)
    integrantes = models.CharField(max_length=10000)
    programa_integrantes = models.CharField(max_length=1000)
    categoria = models.CharField(max_length=1000,  default=None)
    tutor = models.CharField(max_length=1000)
    palabras_clave = models.CharField(max_length=10000)
    resumen = models.CharField(max_length=100000)
    url_video = models.URLField(max_length=10000, default=None, blank=True, null=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    es_finalista = models.BooleanField(default=False)
    
    def __str__(self):
        return self.titulo
    
    class Meta:
        ordering = ('titulo',)        
        verbose_name = "Proyecto de Inngeniatec"
        verbose_name_plural = "Proyectos de Inngeniatec"

class ActivacionConvocatoria(models.Model):
      descripcion = models.CharField(max_length=1000)
      activacion_convocatoria = models.BooleanField(default=True)
      
      fecha_creacion = models.DateTimeField(auto_now_add=True)
  
      def __str__(self):
          return str(self.id) + ' ' + str(self.descripcion)   