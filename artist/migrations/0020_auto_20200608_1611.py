# Generated by Django 3.0.6 on 2020-06-08 16:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artist', '0019_auto_20200608_1609'),
    ]

    operations = [
        migrations.AlterField(
            model_name='genre',
            name='about',
            field=models.CharField(default="The genre's description goes here. The genre's description goes here. The genre's description goes here. The genre's description goes here. The genre's description goes here.", max_length=300),
        ),
        migrations.AlterField(
            model_name='group',
            name='bio',
            field=models.CharField(default="The artist's bio goes here. The artist's bio goes here. The artist's bio goes here. The artist's bio goes here. The artist's bio goes here.", max_length=300),
        ),
    ]
