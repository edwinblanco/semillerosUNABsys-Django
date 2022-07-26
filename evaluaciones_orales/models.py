from django.db import models

from django.core.validators import MinValueValidator, MaxValueValidator
from evaluaciones_preseleccion.models import EvaluacionPreseleccion

from proyectos_app.models import Proyecto
from usuarios_app.models import Usuario

# Create your models here.
class EvaluacionOral(models.Model):
    dominio_tematico = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    expresion_oral = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    creatividad_diseño = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    observaciones = models.CharField(max_length=1500, blank=True)
    
    proyecto = models.ForeignKey(Proyecto, on_delete=models.CASCADE, null=True)
    evaluador = models.ForeignKey(Usuario, on_delete=models.CASCADE, null=True)
    
    is_calificado = models.BooleanField(default=False)
    
    fecha_evaluacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return str(self.proyecto)
    
    def calificacion_final_70(self):
        cali1 = self.dominio_tematico * 0.4
        cali2 = self.expresion_oral * 0.25
        cali3 = self.creatividad_diseño * 0.35
        
        return "{0:.1f}".format((cali1 + cali2 + cali3)*0.3) 
        
    
class CalificacionFinalProyecto(models.Model):
      evaluacion_oral = models.ForeignKey(EvaluacionOral, on_delete=models.CASCADE, null=True)
      evaluacion_preseleccion = models.ForeignKey(EvaluacionPreseleccion, on_delete=models.CASCADE, null=True)
      
      fecha_calificacion = models.DateTimeField(auto_now_add=True)
      
      def calificacion_final(self):
      
        return float(self.evaluacion_oral.calificacion_final_70()) + float(self.evaluacion_preseleccion.calificacion_final_30())
  
      def __str__(self):
          return str(self.fecha_calificacion)  