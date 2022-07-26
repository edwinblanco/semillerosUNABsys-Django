
from abc import abstractclassmethod
from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager

from carrera_app.models import Programa


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
        if self.is_autor and self.is_tutor and self.is_evaluador:
            return self.nombres+" "+self.apellidos+" Tutor - Autor - Evaluador"
        if self.is_tutor and self.is_evaluador:
            return self.nombres+" "+self.apellidos+" Tutor - Evaluador"
        if self.is_tutor and self.is_autor:
            return self.nombres+" "+self.apellidos+" Tutor - Autor"
        if self.is_evaluador and self.is_autor:
            return self.nombres+" "+self.apellidos+" Autor - Evaluador"
        if self.is_evaluador:
            return self.nombres+" "+self.apellidos+" Evaluador"
        if self.is_autor:
            return self.nombres+" "+self.apellidos+" Autor"
        if self.is_tutor:
            return self.nombres+" "+self.apellidos+" Tutor"
        if not self.is_autor and not self.is_tutor and not self.is_evaluador:
            return self.nombres+" "+self.apellidos
    
    def has_perm(self, perm, obj=None):
        return self.is_admin
    
    def has_module_perms(self, add_label):
        return True
 
        
        