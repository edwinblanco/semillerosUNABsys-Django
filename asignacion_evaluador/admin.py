
from django.contrib import admin

from asignacion_evaluador.models import AsignacionEvaluacion, AsignacionEvaluacionInngeniatec
from usuarios_app.models import Usuario

@admin.register(AsignacionEvaluacion)
class ProyectoAdmin(admin.ModelAdmin):
    list_display = ('id', 'proyecto','obtener_evaluadores','fecha_asignacion','asignacion_calificada1', 'asignacion_calificada2')
    list_display_links = ()
    readonly_fields =  ()
    ordering = ()
    
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()
    
    def formfield_for_manytomany(self, db_field, request, **kwargs):
        if db_field.name == "evaluadores":
            kwargs["queryset"] = Usuario.objects.filter(is_evaluador=True)
            
        return super(ProyectoAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

    def has_add_permission(self, request, obj=None):
        return False
    
        
    
@admin.register(AsignacionEvaluacionInngeniatec)
class AsignacionEvaluacionInngeniatecAdmin(admin.ModelAdmin):
    list_display = ('id', 'proyecto','obtener_evaluadores','fecha_asignacion')
    list_display_links = ()
    readonly_fields =  ()
    ordering = ()
    
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()
    
    def formfield_for_manytomany(self, db_field, request, **kwargs):
        if db_field.name == "evaluadores":
            kwargs["queryset"] = Usuario.objects.filter(is_evaluador=True)
            
        return super(AsignacionEvaluacionInngeniatecAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)
    
    def has_add_permission(self, request, obj=None):
        return False    

# Register your models here.
#admin.site.register(AsignacionEvaluacion)