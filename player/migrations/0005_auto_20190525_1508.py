# Generated by Django 2.1.1 on 2019-05-25 07:08

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('player', '0004_merge_20190525_1423'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='players',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='teams',
            options={'managed': False},
        ),
    ]