# Generated by Django 4.0.6 on 2022-09-02 14:41

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('carrera_app', '0002_alter_programa_options_alter_universidad_options'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='universidad',
            options={'ordering': ['universidad'], 'verbose_name_plural': 'Universidades'},
        ),
    ]