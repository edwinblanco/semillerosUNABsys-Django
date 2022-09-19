from tabnanny import verbose
from django.db import models

# Create your models here.
class Universidad(models.Model):
    universidad = models.CharField(max_length=1000)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    is_active = models.BooleanField(default=True)
    
    def __str__(self):
        return self.universidad
    
    class Meta:
        verbose_name_plural = ("Universidades")
        ordering = ['universidad']
    
    
class Programa(models.Model):
    nombre = models.CharField(max_length=1000)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    is_active = models.BooleanField(default=True)
    
    def __str__(self):
        return self.nombre+" "
    
    class Meta:
        ordering = ['nombre']
        verbose_name = "Programa Académico"
        verbose_name_plural = "Programas Académicos"
    
    
    