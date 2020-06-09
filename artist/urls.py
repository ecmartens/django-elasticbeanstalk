from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index')
]

urlpatterns += [
    path('home/', views.index, name='index'),
    path('genres/', views.GenreListView.as_view(), name='genre-list'),
    path('groups/', views.GroupListView.as_view(), name='group-list'),
    path('groups/<int:pk>', views.GroupDetailView.as_view(), name='group-detail'),
    path('musicians/<int:pk>', views.MusicianDetailView.as_view(), name='musician-detail')
]
