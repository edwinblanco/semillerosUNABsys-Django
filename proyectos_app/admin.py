from django.contrib import admin
from proyectos_app.models import Proyecto
from usuarios_app.models import Usuario

@admin.register(Proyecto)
class ProyectoAdmin(admin.ModelAdmin):
    list_display = ('id','titulo', 'tematica', 'semillero', 'proyecto_pdf', 'carta_aval_pdf', 'obtener_autores', 'obtener_tutores')
    list_display_links = ()
    readonly_fields =  ()
    ordering = ()
    
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()
    
    def formfield_for_manytomany(self, db_field, request, **kwargs):
        if db_field.name == "autores":
            kwargs["queryset"] = Usuario.objects.filter(is_autor=True).order_by('nombres', 'apellidos')
            
        if db_field.name == "tutores":
            kwargs["queryset"] = Usuario.objects.filter(is_tutor=True).order_by('nombres', 'apellidos')
            
        return super(ProyectoAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)


# Register your models here.
# admin.site.register(Proyecto, ProyectoAdmin)