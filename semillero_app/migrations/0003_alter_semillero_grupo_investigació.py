# Generated by Django 4.0.6 on 2022-08-29 21:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('semillero_app', '0002_alter_semillero_grupo_investigació'),
    ]

    operations = [
        migrations.AlterField(
            model_name='semillero',
            name='grupo_investigació',
            field=models.CharField(blank=True, default=None, max_length=1000, null=True),
        ),
    ]
