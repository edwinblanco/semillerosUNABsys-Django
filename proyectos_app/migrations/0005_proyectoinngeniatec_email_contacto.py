# Generated by Django 4.0.6 on 2022-09-19 14:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('proyectos_app', '0004_proyectoinngeniatec'),
    ]

    operations = [
        migrations.AddField(
            model_name='proyectoinngeniatec',
            name='email_contacto',
            field=models.CharField(default=None, max_length=1000),
        ),
    ]
