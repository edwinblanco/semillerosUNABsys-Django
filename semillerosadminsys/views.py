

from django.shortcuts import render
from config_inngeniatec_app.models import ConfigPaginaInngeniatec, FechaInngeniatec

from config_semilleros_app.models import ConfigPaginaSemilleros, FechaSemilleros
from tematica_app.models import Tematica


def inicio(request):
    return render(request, 'inicio.html')

def inicio_semilleros(request):
    config = ConfigPaginaSemilleros.objects.filter(pk=1)
    fechas = FechaSemilleros.objects.all()
    if(config.exists()):
        config2 = ConfigPaginaSemilleros.objects.get(pk=1)
        contex = {
            'config':config2,
            'fechas':fechas,
        }
        return render(request, 'inicio_semilleros.html', contex)
    else:
        return render(request, 'inicio_semilleros.html')
    
def inicio_inngeniatec(request):
    config = ConfigPaginaInngeniatec.objects.filter(pk=1)
    fechas = FechaInngeniatec.objects.all()
    if(config.exists()):
        config2 = ConfigPaginaInngeniatec.objects.get(pk=1)
        contex = {
            'config':config2,
            'fechas':fechas,
        }
        return render(request, 'inicio_inngeniatec.html', contex)
    else:
        return render(request, 'inicio_inngeniatec.html')

def lineas_tematicas_view(request):
    tematicas = Tematica.objects.all()
    context = {
        'tematicas': tematicas,
    }
    return render(request, 'lineas_tematicas.html', context)

def tablero_seleccion_view(request):
    context = {'valorador_login': True}
    return render(request, 'usuarios/login.html', context)