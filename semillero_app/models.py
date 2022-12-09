from django.db import models

# Create your models here.
class Semillero(models.Model):
    nombre = models.CharField(max_length=1000)
    grupo_investigació = models.CharField(max_length=1000, default=None, blank=True, null=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now = True)
    is_active = models.BooleanField(default=True)
    
    def __str__(self):
        if self.grupo_investigació is None:
            return str(self.nombre + ' / Grupo no definido')
        else:
            return str(self.nombre + ' / ' + self.grupo_investigació)
    
    class Meta:
        ordering = ('nombre',)
    
    