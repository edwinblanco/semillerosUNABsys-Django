from django.contrib import admin
from evaluaciones_preseleccion.models import ActivacionCalificacionPreseleccion, EvaluacionPreseleccion, ValoracionProyectoIngeniatec, ValoracionProyectoIngeniatecPresencial

@admin.register(EvaluacionPreseleccion)
class EvaluacionAdmin(admin.ModelAdmin):
    list_display = ('proyecto', 'evaluador', 'presentacion_escrita', 'estructura_texto', 'fuentes_consultadas','is_calificado', 'calificacion_final_30')
    list_display_links = ()
    readonly_fields =  ()
    ordering = ()
    
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()
    
@admin.register(ValoracionProyectoIngeniatec)
class EvaluacionAdmin(admin.ModelAdmin):
    list_display = ('proyecto', 'evaluador', 'aplicacion_escenario_real', 'originadidad_innovacion','calidad_tecnica', 'estudio_viablididad', 'calificacion_final_inngeniatec')
    list_display_links = ()
    readonly_fields =  ()
    ordering = ()
    
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()
    
@admin.register(ValoracionProyectoIngeniatecPresencial)
class EvaluacionIAdmin(admin.ModelAdmin):
    list_display = ('proyecto', 'evaluador', 'aplicacion_escenario_real', 'originadidad_innovacion','calidad_tecnica', 'estudio_viablididad', 'calificacion_final_inngeniatec_presencial')
    list_display_links = ()
    readonly_fields =  ()
    ordering = ()
    
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

class ActivacionCalificacionPreAdmin(admin.ModelAdmin):
    
    model = ActivacionCalificacionPreseleccion

    def get_actions(self, request):
        actions = super(ActivacionCalificacionPreAdmin, self).get_actions(request)
        return actions
    
    def has_delete_permission(self, request, obj=None):
        return False
    
    def has_add_permission(self, request, obj=None):
        return False

admin.site.register(ActivacionCalificacionPreseleccion, ActivacionCalificacionPreAdmin)

# Register your models here.
#admin.site.register(EvaluacionOral)