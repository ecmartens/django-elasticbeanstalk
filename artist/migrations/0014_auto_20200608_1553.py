# Generated by Django 3.0.6 on 2020-06-08 15:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artist', '0013_auto_20200608_1552'),
    ]

    operations = [
        migrations.AlterField(
            model_name='group',
            name='bio',
            field=models.CharField(default="The artist's short bio goes here. The artist's short bio goes here. The artist's short bio goes here. The artist's short bio goes here. The artist's short bio goes here. The artist's short bio goes here.", max_length=300),
        ),
    ]
