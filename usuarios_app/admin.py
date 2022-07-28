from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from usuarios_app.models import Usuario

class UsuarioAdmin(UserAdmin):
    list_display = ('correo_institicional', 'nombres', 'apellidos', 'username', 'last_login', 'date_joined', 'is_active', 'is_autor', 'is_tutor', 'is_evaluador')
    list_display_links = ('correo_institicional', 'nombres', 'apellidos', 'username')
    readonly_fields =  ('last_login', 'date_joined')
    ordering = ('-date_joined',)
    
    filter_horizontal = ()
    list_filter = ('is_autor', 'is_tutor', 'is_evaluador')
    fieldsets = ()
    


# Register your models here.
admin.site.register(Usuario, UsuarioAdmin)

