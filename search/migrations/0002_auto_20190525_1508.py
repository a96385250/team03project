# Generated by Django 2.1.1 on 2019-05-25 07:08

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('search', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='articles',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='teams',
            options={'managed': False},
        ),
    ]
