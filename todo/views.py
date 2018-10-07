from django.shortcuts import render
from .playermodels import Players,Teams
from search.models import Articles
from .serializers import PlayerSerializre,TeamsSerializreteams,ArticleSerializre
from rest_framework import filters,viewsets, generics

# Create your views here.
class PlayerViewSet(viewsets.ModelViewSet):
        queryset = Players.objects.all()
        serializer_class = PlayerSerializre

class TeamsViewSet2(viewsets.ModelViewSet):
        queryset = Teams.objects.all()
        serializer_class = TeamsSerializreteams

class ArticlesViewSet2(viewsets.ModelViewSet):
        queryset = Articles.objects.all()
        serializer_class = ArticleSerializre
        filter_backends = (filters.SearchFilter,)
        search_fields = ('title',)