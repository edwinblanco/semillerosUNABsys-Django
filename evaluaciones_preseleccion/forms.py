from django import forms
from evaluaciones_preseleccion.models import EvaluacionPreseleccion, ValoracionProyectoIngeniatec


class FormularioCalificacionPreseleccion(forms.ModelForm):
    
    #observaciones = forms.CharField(widget=forms.Textarea(attrs={
    #    'class': 'form-control',
   # }))
    
    class Meta:
        model = EvaluacionPreseleccion
        fields = [
            'presentacion_escrita',
            'estructura_texto',
            'fuentes_consultadas', 
            'observaciones1', 
            'resumen_introduccion', 
            'objetivos',
            'pertinencia_innovacion',
            'referente_teorico',
            'propuesta_metodologia',
            'resultados_preliminares',
            'discucion_preliminar',
            'observaciones2']
    
    def __init__(self, *args, **kwargs):
        super(FormularioCalificacionPreseleccion, self).__init__(*args,) 
        
        for field in self.fields:
                self.fields[field].widget.attrs['class'] = 'form-control'
                
                
                
class FormularioValoracionProyectoIngeniatec(forms.ModelForm):
    
    aplicacion_escenario_real = forms.FloatField(widget=forms.NumberInput(attrs={'type':'range', 'step': '0.5', 'min': '1', 'max': '5', 'id':'myRange'}))
    originadidad_innovacion = forms.FloatField(widget=forms.NumberInput(attrs={'type':'range', 'step': '0.5', 'min': '1', 'max': '5', 'id':'myRange2'}))
    calidad_tecnica = forms.FloatField(widget=forms.NumberInput(attrs={'type':'range', 'step': '0.5', 'min': '1', 'max': '5', 'id':'myRange3'}))
    estudio_viablididad = forms.FloatField(widget=forms.NumberInput(attrs={'type':'range', 'step': '0.5', 'min': '1', 'max': '5', 'id':'myRange4'}))

    class Meta:
        model = ValoracionProyectoIngeniatec
        fields = ('aplicacion_escenario_real', 'originadidad_innovacion', 'calidad_tecnica', 'estudio_viablididad')
        
    def __init__(self, *args, **kwargs):
        super(FormularioValoracionProyectoIngeniatec, self).__init__(*args,) 
        
        for field in self.fields:
                self.fields[field].widget.attrs['class'] = 'form-range'