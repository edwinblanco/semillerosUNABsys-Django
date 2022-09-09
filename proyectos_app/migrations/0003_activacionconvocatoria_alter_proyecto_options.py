# Generated by Django 4.0.6 on 2022-09-09 13:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('proyectos_app', '0002_alter_proyecto_carta_aval_pdf_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='ActivacionConvocatoria',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descripcion', models.CharField(max_length=1000)),
                ('activacion_convocatoria', models.BooleanField(default=True)),
                ('fecha_creacion', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.AlterModelOptions(
            name='proyecto',
            options={'ordering': ('-fecha_creacion',)},
        ),
    ]
