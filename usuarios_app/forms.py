from django import forms
from usuarios_app.models import Usuario


class FormularioRegistro(forms.ModelForm):
    
    password = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder': 'Ingrese contraseña',
        'class': 'form-control'
    }), min_length=8)
    
    confirmar_password = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder': 'Confirmar contraseña',
        'class': 'form-control'
        
    }))
    
    class Meta:
        model = Usuario
        fields = ['nombres','apellidos', 'correo_institicional','no_documento', 'id_iniversidad', 'programa_academico']
        
    def __init__(self, *args, **kwargs):
        super(FormularioRegistro, self).__init__(*args,)    
        
        self.fields['nombres'].widget.attrs['placeholder'] = 'Ingresa tu nombre'
        self.fields['apellidos'].widget.attrs['placeholder'] = 'Ingresa tu apellido'
        self.fields['correo_institicional'].widget.attrs['placeholder'] = 'Ingresa tu correo institucional'
        self.fields['no_documento'].widget.attrs['placeholder'] = 'Ingresa tu número de identidad'
        self.fields['id_iniversidad'].widget.attrs['placeholder'] = 'Ingresa tu id de la universidad ej: U00XXXXXX'
        
        
        for field in self.fields:
            self.fields[field].widget.attrs['class'] = 'form-control'
            
    def clean(self):
        cleaned_data = super(FormularioRegistro, self).clean()
        password = cleaned_data.get('password')
        password2 = cleaned_data.get('confirmar_password')
        
        if password != password2:
            raise forms.ValidationError(
                "Las contraseñas no coinciden"
            )
        
        
        

