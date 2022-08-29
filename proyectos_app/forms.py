from select import select
from django import forms
import proyectos_app
from proyectos_app.models import Proyecto
from usuarios_app.models import Usuario


class FormularioRegistroProyecto(forms.ModelForm):
    
    otro_semillero = forms.CharField(widget=forms.TextInput(attrs={
        'placeholder': 'Si no encontraste el semillero, escríbelo aquí',
        'class': 'form-control'
    }), required=False)
    
    class Meta:
        model = Proyecto
        fields = ['titulo','tematica','semillero', 'url_video', 'proyecto_pdf', 'carta_aval_pdf']

    CHOICES = [('1', 'Investigación Terminada'), ('2', 'Investigación en Curso'), ('3', 'Propuesta de Investigación')]
    modalidad_aprticipacion = forms.ChoiceField(widget=forms.Select(attrs={
        'placeholder': 'Confirmar contraseña',        
    }), choices=CHOICES)
        
    autores = forms.ModelMultipleChoiceField(
        queryset=Usuario.objects.filter(is_autor=True),
        widget=forms.SelectMultiple(attrs={
        'placeholder': 'Seleccionar autores',
        'class':'select', 
        'data-mdb-filter':'true',
        })
    )
    
    tutores = forms.ModelMultipleChoiceField(
        queryset=Usuario.objects.filter(is_tutor=True),
    )
    
    def __init__(self, *args, **kwargs):
        super(FormularioRegistroProyecto, self).__init__(*args,) 
        
        for field in self.fields:
                self.fields[field].widget.attrs['class'] = 'form-control'
                
        self.fields['semillero'].required = False        
        
    def clean(self):
        cleaned_data = super(FormularioRegistroProyecto, self).clean()
      
        semillero = cleaned_data.get('semillero')
        otro_semillero = cleaned_data.get('otro_semillero')    
        
        if semillero == None and otro_semillero == "":
            raise forms.ValidationError(
                "Debes seleccionar el semillero o escribirlo"
            )
        
        if semillero != None and otro_semillero != "":
            raise forms.ValidationError(
                "Solo debes seleccionar un semillero"
            )   
            
     