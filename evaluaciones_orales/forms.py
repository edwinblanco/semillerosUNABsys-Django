
from django import forms
from evaluaciones_orales.models import EvaluacionOral



class FormularioCalificacionOral(forms.ModelForm):
    
    observaciones = forms.CharField(widget=forms.Textarea(attrs={
        'class': 'form-control',
    }))
    
    class Meta:
        model = EvaluacionOral
        fields = ['dominio_tematico','expresion_oral','creatividad_diseño']
    
    def __init__(self, *args, **kwargs):
        super(FormularioCalificacionOral, self).__init__(*args,) 
        
        for field in self.fields:
                self.fields[field].widget.attrs['class'] = 'form-control'