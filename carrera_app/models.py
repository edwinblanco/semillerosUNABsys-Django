from django.db import models

# Create your models here.
class Programa(models.Model):
    nombre = models.CharField(max_length=1000)
    universidad = models.CharField(max_length=1000)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    is_active = models.BooleanField(default=True)
    
    def __str__(self):
        return self.nombre +" "+self.universidad
    
    
    