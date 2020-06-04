from django.shortcuts import render

# Create your views here.
def index(request):
    '''view function for home page'''
    context = {}
    return render(request, 'index.html', context=context)
