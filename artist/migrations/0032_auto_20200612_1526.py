# Generated by Django 3.0.6 on 2020-06-12 15:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artist', '0031_auto_20200612_1524'),
    ]

    operations = [
        migrations.AlterField(
            model_name='group',
            name='photo',
            field=models.ImageField(default='https://upload.wikimedia.org/wikipedia/commons/f/f9/Rage_Against_The_Machine.jpg', upload_to=''),
        ),
    ]
