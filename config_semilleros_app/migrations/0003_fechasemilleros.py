# Generated by Django 4.0.6 on 2022-11-15 17:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('config_semilleros_app', '0002_alter_configpaginasemilleros_parrafo_secundario1_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='FechaSemilleros',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descripcion', models.CharField(max_length=1000)),
                ('fecha', models.DateField()),
                ('fecha_creacion', models.DateTimeField(auto_now_add=True)),
                ('fecha_actualizacion', models.DateTimeField(auto_now=True)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
    ]
