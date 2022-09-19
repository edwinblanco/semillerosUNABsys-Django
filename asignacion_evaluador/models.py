from django.db import models

from proyectos_app.models import Proyecto, ProyectoInngeniatec
from usuarios_app.models import Usuario

# Create your models here.
class AsignacionEvaluacion(models.Model):
    proyecto = models.ForeignKey(Proyecto, on_delete=models.CASCADE, null=True)
    
    evaluadores = models.ManyToManyField(Usuario)
    
    fecha_asignacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    
    asignacion_calificada1 = models.BooleanField(default=False)
    asignacion_calificada2 = models.BooleanField(default=False)
    
    def obtener_evaluadores(self):        
        return ", ".join([str(p) for p in self.evaluadores.all()])
    
    class Meta:
        verbose_name = "Asignación de Valorador semilleros"
        verbose_name_plural = "Asignaciones de valoradores semilleros"
    
    
class AsignacionEvaluacionInngeniatec(models.Model):
    proyecto = models.ForeignKey(ProyectoInngeniatec, on_delete=models.CASCADE, null=True)
    evaluadores = models.ManyToManyField(Usuario)
    
    asignacion_calificada1 = models.BooleanField(default=False)
    
    fecha_asignacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    
    def obtener_evaluadores(self):        
        return ", ".join([str(p) for p in self.evaluadores.all()])
    
    class Meta:
        verbose_name = "Asignación de Valorador inngeniatec"
        verbose_name_plural = "Asignaciones de valoradores inngeniatec"
    