# Generated by Django 4.0.6 on 2022-08-01 15:17

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('carrera_app', '0002_universidad_alter_programa_universidad'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='programa',
            name='universidad',
        ),
    ]
