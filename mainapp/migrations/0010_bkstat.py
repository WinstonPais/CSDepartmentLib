# Generated by Django 3.0.3 on 2020-05-26 05:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainapp', '0009_auto_20200526_1055'),
    ]

    operations = [
        migrations.CreateModel(
            name='bkstat',
            fields=[
                ('bkst', models.TextField(primary_key=True, serialize=False)),
            ],
        ),
    ]