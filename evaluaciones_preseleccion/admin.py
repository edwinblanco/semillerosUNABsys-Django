from django.contrib import admin

from evaluaciones_preseleccion.models import EvaluacionPreseleccion

@admin.register(EvaluacionPreseleccion)
class EvaluacionAdmin(admin.ModelAdmin):
    list_display = ('proyecto', 'presentacion_escrita', 'estructura_texto', 'fuentes_consultadas','is_calificado', 'calificacion_final_30')
    list_display_links = ()
    readonly_fields =  ()
    ordering = ()
    
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

# Register your models here.
#admin.site.register(EvaluacionOral)