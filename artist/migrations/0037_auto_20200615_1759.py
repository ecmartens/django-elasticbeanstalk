# Generated by Django 3.0.6 on 2020-06-15 17:59

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('artist', '0036_auto_20200615_1641'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='album',
            name='grp',
        ),
        migrations.AddField(
            model_name='album',
            name='group',
            field=models.ForeignKey(help_text='Enter the group for the album.', null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to='artist.Group'),
        ),
        migrations.AddField(
            model_name='group',
            name='albums',
            field=models.ManyToManyField(help_text='add albums.', related_name='_group_albums_+', to='artist.Album'),
        ),
    ]
