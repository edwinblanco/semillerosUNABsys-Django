from django.contrib import admin

from evaluaciones_preseleccion.models import EvaluacionPreseleccion, ValoracionProyectoIngeniatec

@admin.register(EvaluacionPreseleccion)
class EvaluacionAdmin(admin.ModelAdmin):
    list_display = ('proyecto', 'presentacion_escrita', 'estructura_texto', 'fuentes_consultadas','is_calificado', 'calificacion_final_30')
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
    

# Register your models here.
#admin.site.register(EvaluacionOral)