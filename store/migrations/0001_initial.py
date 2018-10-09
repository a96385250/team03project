from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('categoryid', models.AutoField(primary_key=True, serialize=False)),
                ('categoryname', models.CharField(max_length=45)),
            ],
            options={
                'db_table': 'categories',
            },
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('productid', models.AutoField(primary_key=True, serialize=False)),
                ('modelname', models.CharField(max_length=45)),
                ('productimage', models.CharField(max_length=45)),
                ('unitcost', models.IntegerField()),
                ('description', models.CharField(max_length=300)),
                ('categoryid', models.ForeignKey(db_column='categoryid', on_delete=django.db.models.deletion.DO_NOTHING, to='store.Category')),
            ],
            options={
                'db_table': 'products',
            },
        ),
    ]
