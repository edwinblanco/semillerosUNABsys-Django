# Generated by Django 4.0.6 on 2022-09-19 18:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('asignacion_evaluador', '0004_alter_asignacionevaluacioninngeniatec_options'),
    ]

    operations = [
        migrations.AddField(
            model_name='asignacionevaluacioninngeniatec',
            name='asignacion_calificada1',
            field=models.BooleanField(default=False),
        ),
    ]