

from django.shortcuts import render


def inicio(request):
    return render(request, 'inicio.html')

def lineas_tematicas_view(request):
    return render(request, 'lineas_tematicas.html')

def tablero_seleccion_view(request):
    context = {'valorador_login': True}
    return render(request, 'usuarios/login.html', context)