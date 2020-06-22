# Generated by Django 3.0.6 on 2020-06-04 16:41

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('artist', '0005_auto_20200604_1614'),
    ]

    operations = [
        migrations.AddField(
            model_name='group',
            name='members',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to='artist.Musician'),
        ),
        migrations.RemoveField(
            model_name='musician',
            name='group',
        ),
        migrations.AddField(
            model_name='musician',
            name='group',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to='artist.Group'),
        ),
    ]
