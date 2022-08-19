

from django.shortcuts import render


def inicio(request):
    return render(request, 'inicio.html')

def lineas_tematicas_view(request):
    return render(request, 'lineas_tematicas.html')