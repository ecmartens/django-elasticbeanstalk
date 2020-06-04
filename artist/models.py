from datetime import date

from django.db import models
from django.urls import reverse

# Create your models here.
class Instrument(models.Model):
    '''Model representing an instrument (e.g. vocals, synth, guitar, bass, drums)'''
    name = models.CharField(max_length=25, help_text="Enter an instrument (e.g. vocals, synth, guitar, bass, drums)")

    def __str__(self):
        return self.name

class Musician(models.Model):
    '''Model representing a musician.'''
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    group = models.ForeignKey('Group', on_delete=models.SET_NULL, null=True, blank=True, related_name='+')
    instrument = models.ManyToManyField(Instrument, help_text="Select instrument(s) for this musician")
    photo = models.CharField(max_length=200, default="undefined")
    hometown = models.CharField(max_length=25, default="undefined")

    def __str__(self):
        return self.first_name + ' ' + self.last_name

    # def get_absolute_url(self):
    #     '''returns the url for a specific musician.'''
    #     return reverse('musician-detail', args=[str(self.id)])

class Genre(models.Model):
    """Model representing a book genre (e.g. Science Fiction, Non Fiction)."""
    name = models.CharField(max_length=25, help_text="Enter a genre (e.g. hip hop, blues, metal, house, etc.)")

    def __str__(self):
        return self.name

class Group(models.Model):
    '''Model representing a music group'''
    name = models.CharField(max_length=25, help_text="Enter the group's name.")
    genre = models.ManyToManyField('Genre', help_text="Enter a genre.")
    origin = models.CharField(max_length=25, default="")
    date_formed = models.DateField(default=date.today)
    photo = models.CharField(max_length=200, default="")
    members = models.ManyToManyField('Musician', help_text="enter musicians.", related_name='+')

    def __str__(self):
        return self.name