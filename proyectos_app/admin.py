from django.contrib import admin
from asignacion_evaluador.models import HistoriaCambiosAsignacionSemilleros
from proyectos_app.models import ActivacionConvocatoria, ActivacionConvocatoriaInngeniatec, Periodo, Proyecto, ProyectoInngeniatec
from usuarios_app.models import Usuario

from import_export.admin import ImportExportActionModelAdmin

@admin.register(Proyecto)
class ProyectoAdmin(ImportExportActionModelAdmin, admin.ModelAdmin):
    list_display = ('id','titulo','periodo', 'tematica', 'semillero', 'proyecto_pdf', 'carta_aval_pdf', 'obtener_autores', 'obtener_tutores')
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
    list_display = ('id','titulo', 'periodo','programa_integrantes', 'categoria', 'obtener_autores','obtener_tutores', 'palabras_clave', 'url_video')
    list_display_links = ('titulo',)
    search_fields = ['titulo', 'integrantes', 'programa_integrantes','categoria', 'palabras_clave']
    readonly_fields =  ()
    ordering = ()
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()
    
    def formfield_for_manytomany(self, db_field, request, **kwargs):
        if db_field.name == "integrantes":
            kwargs["queryset"] = Usuario.objects.filter(is_autor=True).order_by('nombres', 'apellidos')
            
        if db_field.name == "tutores":
            kwargs["queryset"] = Usuario.objects.filter(is_tutor=True).order_by('nombres', 'apellidos')
            
        return super(ProyectoInngeniatecAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)


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
    
class ActivacionConvocatoriaInngeniatecAdmin(admin.ModelAdmin):
    
    model = ActivacionConvocatoriaInngeniatec
    

    def get_actions(self, request):
        actions = super(ActivacionConvocatoriaInngeniatecAdmin, self).get_actions(request)
        return actions
    
    def has_delete_permission(self, request, obj=None):
        return False 
    
    def has_add_permission(self, request, obj=None):
        return False
    
admin.site.register(ActivacionConvocatoriaInngeniatec, ActivacionConvocatoriaInngeniatecAdmin)

class PeriodoAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('anio','semestre')}
    list_display = ('id','anio','semestre', 'slug')

admin.site.register(Periodo, PeriodoAdmin)

