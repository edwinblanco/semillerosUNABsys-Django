
from django import forms

from usuarios_app.models import Usuario

import re


class FormularioRegistro(forms.ModelForm):
    
    password = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder': 'Ingrese contraseña',
        'class': 'form-control'
    }), min_length=8)
    
    confirmar_password = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder': 'Confirmar contraseña',
        'class': 'form-control'
    }))
    
    CHOICES2 = [('1', 'No'), ('2', 'Si')]
    is_tutor = forms.ChoiceField(widget=forms.Select(attrs={
        'class': 'form-control',        
    }), choices=CHOICES2)
    
    otra_universidad = forms.CharField(widget=forms.TextInput(attrs={
        'placeholder': 'Si no enconstraste tu universidad, escríbela aquí',
        'class': 'form-control'
    }), required=False)
    
    otra_carrera = forms.CharField(widget=forms.TextInput(attrs={
        'placeholder': 'Si no enconstraste tu carrera, escríbela aquí',
        'class': 'form-control'
    }), required=False)
    
    class Meta:
        model = Usuario
        fields = ['nombres','apellidos', 'correo_institicional','no_documento', 'id_iniversidad', 'programa_academico', 'universidad']
        
    def __init__(self, *args, **kwargs):
        super(FormularioRegistro, self).__init__(*args,)    
        
        self.fields['nombres'].widget.attrs['placeholder'] = 'Ingresa tu nombre'
        self.fields['apellidos'].widget.attrs['placeholder'] = 'Ingresa tu apellido'
        self.fields['correo_institicional'].widget.attrs['placeholder'] = 'Ingresa tu correo institucional'
        self.fields['no_documento'].widget.attrs['placeholder'] = 'Ingresa tu número de identidad'
        self.fields['id_iniversidad'].widget.attrs['placeholder'] = 'Ingresa tu id de la universidad ej: U00XXXXXX'
        
        self.fields['universidad'].required = False
        self.fields['otra_universidad'].required = False
        
        self.fields['otra_carrera'].required = False
        self.fields['programa_academico'].required = False
        
        self.fields['no_documento'].required = False
        
        for field in self.fields:
            self.fields[field].widget.attrs['class'] = 'form-control'
            
    def clean(self):
        cleaned_data = super(FormularioRegistro, self).clean()
        password = cleaned_data.get('password')
        password2 = cleaned_data.get('confirmar_password')
        
        universidad = cleaned_data.get('universidad')
        otra_universidad = cleaned_data.get('otra_universidad')
        
        carrera = cleaned_data.get('programa_academico')
        otra_carrera = cleaned_data.get('otra_carrera')
        
        if password != password2:
            raise forms.ValidationError(
                "Las contraseñas no coinciden"
            )
            
        reg = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*#?& ])[A-Za-z\d@$!#%*?&]{8,18}$"
        
        # compiling regex
        match_re = re.compile(reg)
        # searching regex
        res = re.search(match_re, str(password))
        
            
        # validating conditions
        if res:
            print("Valid Password")
        else:
            print("Invalid Password")
            raise forms.ValidationError(
                "Contraseña inválida, debe contener al menos una letra mayúscula, un número, un carácter especial [@$!%*#?&] y 8 caracteres"
            )
        
        if universidad == None and otra_universidad == "":
            raise forms.ValidationError(
                "Debes seleccionar tu universidad o escribirla"
            )
        
        if universidad != None and otra_universidad != "":
            raise forms.ValidationError(
                "Solo debes seleccionar una universidad"
            )
            
        if carrera == None and otra_carrera == "":
            raise forms.ValidationError(
                "Debes seleccionar tu programa acádemico o escribirlo"
            )
        
        if carrera != None and otra_carrera != "":
            raise forms.ValidationError(
                "Solo debes seleccionar un programa acádemico"
            )    
        