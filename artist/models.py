from django.db import models

# Create your models here.
class Instrument(models.Model):
    '''Model representing an instrument (e.g. vocals, synth, guitar, bass, drums)'''
    name = models.CharField(max_length=25, help_text="Enter an instrument (e.g. vocals, synth, guitar, bass, drums)")

    def __str__(self):
        return self.name

class Musician(models.Model):
    '''Model representing a musician.'''
    first_name = models.CharField(max_length=25)
    last_name = models.CharField(max_length=25)
    instrument = models.ManyToManyField(Instrument, help_text="Select instrument(s) for this musician")

    def __str__(self):
        return self.first_name, self.last_name

class Genre(models.Model):
    """Model representing a book genre (e.g. Science Fiction, Non Fiction)."""
    name = models.CharField(max_length=25, help_text="Enter a genre (e.g. hip hop, blues, metal, house, etc.)")

    def __str__(self):
        return self.name

class Group(models.Model):
    '''Model representing a music group'''
    name = models.CharField(max_length=25, help_text="Enter the group's name.")
    genre = models.ManyToManyField('Genre', help_text="Enter a genre.")


