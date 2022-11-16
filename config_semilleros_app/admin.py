from django.contrib import admin

from config_semilleros_app.models import ConfigPaginaSemilleros, FechaSemilleros

# Register your models here.
class ConfigPaginaSemillerosAdmin(admin.ModelAdmin):
    
    model = ConfigPaginaSemilleros

    def get_actions(self, request):
        actions = super(ConfigPaginaSemillerosAdmin, self).get_actions(request)
        return actions
    
    def has_delete_permission(self, request, obj=None):
        return False
    
    def has_add_permission(self, request, obj=None):
        return False

admin.site.register(ConfigPaginaSemilleros, ConfigPaginaSemillerosAdmin)
@admin.register(FechaSemilleros)
class FechaSemillerosAdmin(admin.ModelAdmin):
    list_display = ('descripcion','fecha')
