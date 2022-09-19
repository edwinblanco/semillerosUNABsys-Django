from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator

from proyectos_app.models import Proyecto, ProyectoInngeniatec
from usuarios_app.models import Usuario

# Create your models here.
class EvaluacionPreseleccion(models.Model):
    presentacion_escrita = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    estructura_texto = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    fuentes_consultadas = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    observaciones1 = models.CharField(max_length=1500, blank=True)
    
    resumen_introduccion = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    objetivos = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    pertinencia_innovacion = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    
    referente_teorico = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    propuesta_metodologia = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    resultados_preliminares = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    discucion_preliminar = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    
    observaciones2 = models.CharField(max_length=1500, blank=True)
    
    proyecto = models.ForeignKey(Proyecto, on_delete=models.CASCADE, null=True)
    evaluador = models.ForeignKey(Usuario, on_delete=models.CASCADE, null=True)
    
    is_calificado = models.BooleanField(default=False)
    
    fecha_evaluacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return str(self.proyecto)
    
    def calificacion_final_30(self):
        cali1 = ((self.presentacion_escrita + self.estructura_texto + self.fuentes_consultadas)/3) *0.1
        cali2 = ((self.resumen_introduccion + self.objetivos + self.pertinencia_innovacion + self.referente_teorico + self.propuesta_metodologia + self.resultados_preliminares + self.discucion_preliminar) /7)* 0.6
        
        return "{0:.1f}".format(cali1 + cali2)
    
    class Meta:
        verbose_name = "Valoración de preselección"
        verbose_name_plural = "valoraciones de preselección"
        
class ValoracionProyectoIngeniatec(models.Model):
    aplicacion_escenario_real = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    originadidad_innovacion = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])
    calidad_tecnica = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])    
    estudio_viablididad = models.FloatField(validators=[MinValueValidator(0.0), MaxValueValidator(5.0)])    
    
    proyecto = models.ForeignKey(ProyectoInngeniatec, on_delete=models.CASCADE, null=True)
    evaluador = models.ForeignKey(Usuario, on_delete=models.CASCADE, null=True)

    is_calificado = models.BooleanField(default=False)

    fecha_evaluacion = models.DateTimeField(auto_now_add=True)
    fecha_actualizacion = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return str(self.proyecto)
    
    def calificacion_final_inngeniatec(self):
        pass
    
    class Meta:
        verbose_name = "Valoración Inngeniatec"
        verbose_name_plural = "valoraciones Inngeniatec"        
      
        