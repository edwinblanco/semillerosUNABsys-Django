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
   
    def __init__(self, *args, **kwargs):
        super(FormularioAsignarValorador, self).__init__(*args,) 
        
        for field in self.fields:
                self.fields[field].widget.attrs['class'] = 'form-control'
                

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