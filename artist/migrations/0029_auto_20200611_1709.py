# Generated by Django 3.0.6 on 2020-06-11 17:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artist', '0028_auto_20200611_1506'),
    ]

    operations = [
        migrations.AlterField(
            model_name='group',
            name='photo',
            field=models.ImageField(default='https://images.app.goo.gl/ivoQGPgXPHC79EBKA', upload_to='images/groups'),
        ),
    ]