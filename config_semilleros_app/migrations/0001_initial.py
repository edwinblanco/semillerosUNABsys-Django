# Generated by Django 4.0.6 on 2022-11-15 16:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ConfigPaginaSemilleros',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo_principal', models.CharField(max_length=1000)),
                ('terminos_convocatoria_url', models.URLField(max_length=250)),
                ('plantilla_inscripcion_url', models.URLField(max_length=250)),
                ('formato_carta_aval_url', models.URLField(max_length=250)),
                ('video_guia_inscripcion_url', models.URLField(max_length=250)),
                ('titulo_secundario1', models.CharField(max_length=1000)),
                ('parrafo_secundario1', models.CharField(max_length=10000)),
                ('titulo_secundario2', models.CharField(max_length=1000)),
                ('parrafo_secundario2', models.CharField(max_length=10000)),
                ('correo_contacto', models.CharField(max_length=200)),
                ('fecha_creacion', models.DateTimeField(auto_now_add=True)),
                ('fecha_actualizacion', models.DateTimeField(auto_now=True)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
    ]