# Generated by Django 3.0.6 on 2020-06-10 18:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artist', '0024_group_photo2'),
    ]

    operations = [
        migrations.AlterField(
            model_name='group',
            name='photo2',
            field=models.ImageField(default='https://images.app.goo.gl/ivoQGPgXPHC79EBKA', upload_to='artist/static/images/groups'),
        ),
    ]
