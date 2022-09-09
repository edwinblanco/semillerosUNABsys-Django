from django.contrib import admin

from evaluaciones_orales.models import ActivacionCalificacionOral, CalificacionFinalProyecto, EvaluacionOral
from usuarios_app.models import Usuario

@admin.register(EvaluacionOral)
class ProyectoAdmin(admin.ModelAdmin):
    list_display = ('id','dominio_tematico','expresion_oral','creatividad_diseño', 'proyecto', 'evaluador', 'is_calificado', 'calificacion_final_70')
    list_display_links = ()
    readonly_fields =  ()
    ordering = ()
    
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()
    
    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "evaluador":
            kwargs["queryset"] = Usuario.objects.filter(is_evaluador=True)
            
        return super(ProyectoAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)
    
    
@admin.register(CalificacionFinalProyecto)
class FinalCalificaionAdmin(admin.ModelAdmin):
    list_display = ('evaluacion_oral', 'evaluacion_preseleccion','fecha_calificacion','calificacion_final')
    list_display_links = ()
    readonly_fields =  ()
    ordering = ()
    
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()
    

# Register your models here.

class ActivacionCalificacionOralAdmin(admin.ModelAdmin):
    
    model = ActivacionCalificacionOral

    def get_actions(self, request):
        actions = super(ActivacionCalificacionOralAdmin, self).get_actions(request)
        return actions
    
    def has_delete_permission(self, request, obj=None):
        return False
    
    def has_add_permission(self, request, obj=None):
        return False

admin.site.register(ActivacionCalificacionOral, ActivacionCalificacionOralAdmin)