from django.shortcuts import render
from django.views import generic

from .models import Genre, Group, Musician


def index(request):
    '''view function for home page'''
    context = {}
    return render(request, 'index.html', context=context)

class GenreDetailView(generic.DetailView):
    model = Genre

class GenreListView(generic.ListView):
    model = Genre
    paginate_by = 10

class GroupListView(generic.ListView):
    """Generic class-based list view for a list of groups."""
    model = Group
    paginate_by = 10

class GroupDetailView(generic.DetailView):
    """Generic class-based detail view for a Group."""
    model = Group

class MusicianDetailView(generic.DetailView):
    """Generic class-based detail view for a Musician."""
    model = Musician