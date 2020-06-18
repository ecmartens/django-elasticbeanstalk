from django.db import models
from django.urls import reverse

# Create your models here.
class Instrument(models.Model):
    '''Model representing an instrument (e.g. vocals, synth, guitar, bass, drums)'''
    name = models.CharField(max_length=100, help_text="Enter an instrument (e.g. vocals, synth, guitar, bass, drums)")
    
    def __str__(self):
        return self.name
    
class Musician(models.Model):
    '''Model representing a musician.'''
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    alias = models.CharField(max_length=100, null=True, default="None")
    group = models.ForeignKey('Group', on_delete=models.SET_NULL, null=True, blank=True, related_name='+')
    instrument = models.ManyToManyField(Instrument, help_text="Select instrument(s) for this musician.")
    photo = models.ImageField(upload_to='musicians/', default="/media/bc1.jpg")
    # photo = models.CharField(max_length=200, default="https://images.app.goo.gl/ivoQGPgXPHC79EBKA")
    hometown = models.CharField(max_length=100, default="undefined")
    
    def __str__(self):
        if not self.alias == "None":
            return self.alias
        else:
            return self.first_name + ' ' + self.last_name
    
    def get_absolute_url(self):
        """Returns the url to access a specific Musician instance."""
        return reverse('musician-detail', args=[str(self.id)])
    
class Group(models.Model):
    '''Model representing a music group'''
    name = models.CharField(max_length=100, help_text="Enter the group's name.")
    genre = models.ForeignKey('Genre', on_delete=models.SET_NULL, null=True, blank=True, related_name='+', help_text="Enter a genre.")
#    genre = models.ManyToManyField('Genre', help_text="Enter a genre.")
    origin = models.CharField(max_length=100, default="")
    year_formed = models.IntegerField(default=1980)
    photo = models.ImageField(upload_to='groups/', default="/media/bc1.jpg")
    members = models.ManyToManyField('Musician', help_text="enter musicians.", related_name='+')
    bio = models.CharField(max_length=2000, default="The artist's bio goes here. The artist's bio goes here. The artist's bio goes here. The artist's bio goes here. The artist's bio goes here.")
    albums = models.ManyToManyField('Album', help_text="add albums.", related_name='+')

    def __str__(self):
        return self.name
    
    def get_absolute_url(self):
        """Returns the url to access a specific group instance."""
        return reverse('group-detail', args=[str(self.id)])
    
class Genre(models.Model):
    """Model representing a book genre (e.g. Science Fiction, Non Fiction)."""
    name = models.CharField(max_length=100, help_text="Enter a genre (e.g. hip hop, blues, metal, house, etc.)")
    about = models.CharField(max_length=300, default="The genre's description goes here. The genre's description goes here. The genre's description goes here. The genre's description goes here. The genre's description goes here.")
    groups = models.ManyToManyField('Group', related_name='+', help_text="Add groups for this genre.")
    photo = models.ImageField(upload_to='genres/', default="/media/bc1.jpg")
    # photo = models.CharField(max_length=200,  default="https://upload.wikimedia.org/wikipedia/commons/f/f9/Rage_Against_The_Machine.jpg")

    def __str__(self):
        return self.name

class Album(models.Model):
    name = models.CharField(max_length=100, help_text="Enter an album name.")
    release_year = models.IntegerField(default=1980)
    cover_photo = models.ImageField(upload_to='albums/', default="/covers/bc1.jpg")
    group = models.ForeignKey('Group', null=True, on_delete=models.SET_NULL, related_name='+', help_text="Enter the group for the album.")

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        """Returns the url to access a specific Album instance."""
        return reverse('album-detail', args=[str(self.id)])