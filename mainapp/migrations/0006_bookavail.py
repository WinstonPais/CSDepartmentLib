# Generated by Django 3.0.3 on 2020-05-26 05:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainapp', '0005_delete_bookavail'),
    ]

    operations = [
        migrations.CreateModel(
            name='Bookavail',
            fields=[
                ('bk', models.TextField(primary_key=True, serialize=False)),
            ],
        ),
    ]
