# Generated by Django 3.0.6 on 2020-06-24 16:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artist', '0049_auto_20200624_1526'),
    ]

    operations = [
        migrations.AlterField(
            model_name='musician',
            name='photo',
            field=models.ImageField(default='/media/bc1.jpg', upload_to='musicians/'),
        ),
    ]