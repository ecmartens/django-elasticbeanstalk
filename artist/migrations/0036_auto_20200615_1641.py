# Generated by Django 3.0.6 on 2020-06-15 16:41

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('artist', '0035_auto_20200614_1347'),
    ]

    operations = [
        migrations.AlterField(
            model_name='genre',
            name='photo',
            field=models.ImageField(default='/media/bc1.jpg', upload_to='genres/'),
        ),
        migrations.CreateModel(
            name='Album',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Enter an album name.', max_length=100)),
                ('release_date', models.DateField(default=datetime.date.today)),
                ('cover_photo', models.ImageField(default='/covers/bc1.jpg', upload_to='albums/')),
                ('grp', models.ForeignKey(blank=True, help_text='Enter the group for the album.', null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to='artist.Group')),
            ],
        ),
    ]
