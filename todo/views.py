from django.shortcuts import render
from .playermodels import Players,Teams
from search.models import Articles
from .serializers import PlayerSerializre,TeamsSerializreteams,ArticleSerializre
from rest_framework import filters,viewsets, generics
from .playermodels import Players,Teams,Members
from .serializers import PlayerSerializre,TeamsSerializreteams,MembersSerializreteams
from rest_framework import viewsets

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
class MembersViewSet(viewsets.ModelViewSet):
        queryset = Members.objects.all()
        serializer_class = MembersSerializreteams
