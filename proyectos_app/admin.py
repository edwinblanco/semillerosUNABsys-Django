from django.contrib import admin
from proyectos_app.models import ActivacionConvocatoria, Proyecto, ProyectoInngeniatec
from usuarios_app.models import Usuario

from import_export.admin import ImportExportActionModelAdmin

@admin.register(Proyecto)
class ProyectoAdmin(ImportExportActionModelAdmin, admin.ModelAdmin):
    list_display = ('id','titulo', 'tematica', 'semillero', 'proyecto_pdf', 'carta_aval_pdf', 'obtener_autores', 'obtener_tutores')
    list_display_links = ()
    search_fields = ['titulo']
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


@admin.register(ProyectoInngeniatec)
class ProyectoInngeniatecAdmin(ImportExportActionModelAdmin, admin.ModelAdmin):
    list_display = ('id','titulo', 'integrantes', 'programa_integrantes', 'categoria', 'tutor', 'palabras_clave', 'url_video')
    list_display_links = ('titulo',)
    search_fields = ['titulo', 'integrantes', 'programa_integrantes','categoria', 'tutor', 'palabras_clave']
    readonly_fields =  ()
    ordering = ()
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()


# Register your models here.
# admin.site.register(Proyecto, ProyectoAdmin)
class ActivacionConvocatoriaAdmin(admin.ModelAdmin):
    
    model = ActivacionConvocatoria
    

    def get_actions(self, request):
        actions = super(ActivacionConvocatoriaAdmin, self).get_actions(request)
        return actions
    
    def has_delete_permission(self, request, obj=None):
        return False 
    
    def has_add_permission(self, request, obj=None):
        return False
    
    

admin.site.register(ActivacionConvocatoria, ActivacionConvocatoriaAdmin)