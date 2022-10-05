from django import forms
from asignacion_evaluador.models import AsignacionEvaluacion, AsignacionEvaluacionInngeniatec
from usuarios_app.models import Usuario


class FormularioAsignarValorador(forms.ModelForm):
    
    class Meta:
        model = AsignacionEvaluacion
        fields = ['proyecto']

    evaluadores = forms.ModelMultipleChoiceField(
        queryset=Usuario.objects.filter(is_evaluador=True),
        widget=forms.SelectMultiple(attrs={
        'placeholder': 'Seleccionar autores',
        'class':'select', 
        'data-mdb-filter':'true',
        })
    )  
   
    observaciones = forms.CharField(widget=forms.Textarea(attrs={
        'class': 'form-control',
    }), required=False)
   
    def __init__(self, *args, **kwargs):
        super(FormularioAsignarValorador, self).__init__(*args,) 
        
        for field in self.fields:
                self.fields[field].widget.attrs['class'] = 'form-control'
                
    def clean(self):
        cleaned_data = super().clean()
        if cleaned_data.get('evaluadores').count() > 2:
            raise forms.ValidationError('Solo debes seleccionar 2 valoradores por proyecto')
                

class FormularioAsignarValoradorInngeniatec(forms.ModelForm):
    
    class Meta:
        model = AsignacionEvaluacionInngeniatec
        fields = ['proyecto']

    evaluadores = forms.ModelMultipleChoiceField(
        queryset=Usuario.objects.filter(is_evaluador=True),
        widget=forms.SelectMultiple(attrs={
        'placeholder': 'Seleccionar valoradores',
        'class':'select', 
        'data-mdb-filter':'true',
        })
    )  
   
   
    def __init__(self, *args, **kwargs):
        super(FormularioAsignarValoradorInngeniatec, self).__init__(*args,) 
        
        for field in self.fields:
                self.fields[field].widget.attrs['class'] = 'form-control'
                
    def clean(self):
        cleaned_data = super().clean()
        if cleaned_data.get('evaluadores').count() > 2:
            raise forms.ValidationError('Solo debes seleccionar 2 valoradores por proyecto')
        
class FormularioOdenarAsignacion(forms.Form):
    CHOICES = [('1', 'Título del Proyecto (A-Z)'), ('2', 'Título del Proyecto (Z-A)'), ('3', 'Fecha de asignación (Nueva - Antigua)'), ('4', 'Fecha de asignación (Antigua - Nueva)')]
    seleccion_ordenamiento = forms.ChoiceField(widget=forms.Select(attrs={
        'placeholder': 'Seleccionar ordenamiento',    
        'class':'form-control',     
    }), choices=CHOICES)
    
    