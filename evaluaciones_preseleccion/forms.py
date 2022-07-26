from django import forms
from evaluaciones_preseleccion.models import EvaluacionPreseleccion


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