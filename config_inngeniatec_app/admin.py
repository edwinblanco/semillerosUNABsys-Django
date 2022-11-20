from django.contrib import admin

from config_inngeniatec_app.models import ConfigPaginaInngeniatec, FechaInngeniatec

class ConfigPaginaInngeniatecAdmin(admin.ModelAdmin):
    
    model = ConfigPaginaInngeniatec

    def get_actions(self, request):
        actions = super(ConfigPaginaInngeniatecAdmin, self).get_actions(request)
        return actions
    
    def has_delete_permission(self, request, obj=None):
        return False
    
    #def has_add_permission(self, request, obj=None):
        #return False

admin.site.register(ConfigPaginaInngeniatec, ConfigPaginaInngeniatecAdmin)
@admin.register(FechaInngeniatec)
class FechaSemillerosAdmin(admin.ModelAdmin):
    list_display = ('descripcion','fecha')