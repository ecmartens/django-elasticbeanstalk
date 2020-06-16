from django.contrib import admin

# Register your models here.

from .models import Album, Genre, Group, Instrument, Musician

admin.site.register(Album)
admin.site.register(Genre)
# admin.site.register(Group)
admin.site.register(Instrument)
admin.site.register(Musician)

class MusiciansInline(admin.TabularInline):
    """Defines format of inline book insertion (used in AuthorAdmin)"""
    model = Musician

class AlbumsInline(admin.TabularInline):
    """Defines format of inline book insertion (used in AuthorAdmin)"""
    model = Album

@admin.register(Group)
class GroupAdmin(admin.ModelAdmin):
    """Administration object for Author models.
    Defines:
     - fields to be displayed in list view (list_display)
     - orders fields in detail view (fields),
       grouping the date fields horizontally
     - adds inline addition of books in author view (inlines)
    """
    list_display = ('name', 'genre', 'origin', 'year_formed')
    # fields = ['name', 'genre', 'origin', 'year_formed', 'photo', 'members', 'bio', 'albums']
    inlines = [MusiciansInline, AlbumsInline]