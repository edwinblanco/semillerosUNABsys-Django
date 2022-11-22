from django.db import models
from evaluaciones_preseleccion.models import EvaluacionPreseleccion

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
    
    def save(self, *args, **kwargs):
        
        evalu = AsignacionEvaluacion.objects.filter(id=self.id).exists()

        if evalu:
            asignacion = AsignacionEvaluacion.objects.filter(id=self.id)[:1].get()
            
            for eva in asignacion.evaluadores.all():
                print('evaluador antiguo: ', eva)
            
        super().save(*args, **kwargs)
    
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
    
    
class HistoriaCambiosAsignacionSemilleros(models.Model):
    proyecto = models.ForeignKey(Proyecto, on_delete=models.CASCADE)
    valoracdores_anteriores = models.ManyToManyField(Usuario, related_name='valoradores_anteriores')
    valoradores_nuevos = models.ManyToManyField(Usuario, related_name='valoradores_nuevos')
    observaciones = models.CharField(max_length=10000, blank=True, null=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    
    def obtener_valoracdores_anteriores(self):        
        return ", ".join([str(p) for p in self.valoracdores_anteriores.all()])
    
    def obtener_valoradores_nuevos(self):        
        return ", ".join([str(p) for p in self.valoradores_nuevos.all()])
    
    class Meta:
        verbose_name = "Historia de cambios en la asignación de valoradores de Semilleros"
        verbose_name_plural = "Historias de cambios en la asignación de valoradores de Semilleros"