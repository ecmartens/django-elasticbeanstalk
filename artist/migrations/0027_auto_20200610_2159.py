# Generated by Django 3.0.6 on 2020-06-10 21:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artist', '0026_auto_20200610_2145'),
    ]

    operations = [
        migrations.AlterField(
            model_name='group',
            name='photo2',
            field=models.ImageField(default='https://images.app.goo.gl/ivoQGPgXPHC79EBKA', upload_to='groups'),
        ),
    ]