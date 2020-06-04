from django.contrib import admin

# Register your models here.

from .models import Genre, Group, Instrument, Musician

admin.site.register(Genre)
admin.site.register(Group)
admin.site.register(Instrument)
admin.site.register(Musician)