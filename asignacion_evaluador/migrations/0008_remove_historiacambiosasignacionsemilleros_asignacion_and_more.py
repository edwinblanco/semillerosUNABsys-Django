# Generated by Django 4.0.6 on 2022-10-05 09:26

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('proyectos_app', '0010_alter_proyecto_options_and_more'),
        ('asignacion_evaluador', '0007_rename_asignacion_historiacambiosasignacionsemilleros_asignacion'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='historiacambiosasignacionsemilleros',
            name='asignacion',
        ),
        migrations.AddField(
            model_name='historiacambiosasignacionsemilleros',
            name='proyecto',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='proyectos_app.proyecto'),
            preserve_default=False,
        ),
    ]
