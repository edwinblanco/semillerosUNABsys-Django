# Generated by Django 4.0.6 on 2022-09-19 16:12

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('proyectos_app', '0008_alter_proyectoinngeniatec_integrantes_and_more'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='proyecto',
            options={'ordering': ('-fecha_creacion',), 'verbose_name': 'Proyecto de semillero', 'verbose_name_plural': 'Proyectos de Semilleros'},
        ),
        migrations.AlterModelOptions(
            name='proyectoinngeniatec',
            options={'ordering': ('-fecha_creacion',), 'verbose_name': 'Proyecto de Inngeniatec', 'verbose_name_plural': 'Proyectos de Inngeniatec'},
        ),
    ]