
from abc import abstractclassmethod
from sqlite3 import apilevel
from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager

from carrera_app.models import Programa, Universidad
from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_decode, urlsafe_base64_encode
from django.contrib.auth.tokens import default_token_generator
from django.utils.encoding import force_bytes
from django.core.mail import EmailMessage, EmailMultiAlternatives


# Create your models here.
class UsuarioManager(BaseUserManager):
    def create_user(self, nombres, apellidos, username, correo_institicional, password=None):
        if not correo_institicional:
            raise ValueError('El usuario debe tener un email')
        if not username:
            raise ValueError('El usuario debe tener un username')
         
        user = self.model(
            correo_institicional = self.normalize_email(correo_institicional),
            username = username,
            nombres = nombres,
            apellidos = apellidos,
        )
        
        user.set_password(password)
        user.save(using = self._db)
        return user
    
    def create_superuser(self, nombres, apellidos, username, correo_institicional, password):
        
        user = self.create_user(
            correo_institicional = self.normalize_email(correo_institicional),
            username = username,
            password= password,
            nombres = nombres,
            apellidos = apellidos,
        )

        user.is_admin = True
        user.is_active = True
        user.is_staff = True    
        user.is_superadmin = True
        user.save(using = self._db)
        return user

class Usuario(AbstractBaseUser):
    nombres = models.CharField(max_length=1000)
    apellidos = models.CharField(max_length=1000)   
    correo_institicional = models.EmailField(max_length=1000, unique=True)  
    username = models.CharField(max_length=1000, unique=True) 
    no_documento = models.IntegerField(default=0, blank=True) 
    id_iniversidad = models.CharField(max_length=1000)
    programa_academico = models.ForeignKey(Programa, on_delete=models.CASCADE, related_name="carrera", null=True)
    universidad = models.ForeignKey(Universidad, on_delete=models.CASCADE, related_name="universidad2", null=True)
    is_autor = models.BooleanField(default=False)
    is_evaluador = models.BooleanField(default=False)
    is_tutor = models.BooleanField(default=False)
    
    #campos de Django
    date_joined = models.DateTimeField(auto_now_add=True)   
    last_login = models.DateTimeField(auto_now=True)
    is_admin = models.BooleanField(default=False)
    is_staff = models.BooleanField(default=False)   
    is_active = models.BooleanField(default=False)
    is_superadmin = models.BooleanField(default=False)   
    
    USERNAME_FIELD = 'correo_institicional'
    REQUIRED_FIELDS = ['nombres', 'apellidos', 'username']
    
    objects = UsuarioManager()
    
    def __str__(self):
        return self.correo_institicional+" | "+self.nombres+" "+self.apellidos
    
    def has_perm(self, perm, obj=None):
        return self.is_admin
    
    def has_module_perms(self, add_label):
        return True
    
    def save(self, *args, **kwargs):
        if kwargs:
            print('kwargs: ', kwargs)
        else: 
           if self.correo_institicional and self.is_evaluador and self.is_tutor == False :
                print('Enviando email...', self.correo_institicional)
                    
                mail_subject = 'Has sido registrado como valorador de Proyectos'
                body = render_to_string('usuarios/registro_valorador_email.html', {
                    'nombre': self.nombres,
                    'apellido': self.apellidos,
                    'correo': self.correo_institicional,
                })
                    
                to_email = self.correo_institicional
                send_email = EmailMultiAlternatives(mail_subject, body, to = [to_email])
                send_email.send()
                    
                print('email enviado a: ', self.correo_institicional)
            
        super().save(*args, **kwargs)
        
    class Meta:
        ordering = ['correo_institicional']        
        