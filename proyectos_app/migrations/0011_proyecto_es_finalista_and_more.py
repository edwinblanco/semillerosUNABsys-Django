# Generated by Django 4.0.6 on 2022-10-05 19:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('proyectos_app', '0010_alter_proyecto_options_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='proyecto',
            name='es_finalista',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='proyectoinngeniatec',
            name='es_finalista',
            field=models.BooleanField(default=False),
        ),
    ]
