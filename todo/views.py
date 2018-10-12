from django.shortcuts import render
from .playermodels import Players,Teams
from search.models import Articles
from .serializers import PlayerSerializre,TeamsSerializreteams,ArticleSerializre
from rest_framework import filters,viewsets, generics
from .serializers import PlayerSerializre,TeamsSerializreteams
from rest_framework import viewsets

# Create your views here.
class PlayerViewSet(viewsets.ModelViewSet):
        queryset = Players.objects.all()
        serializer_class = PlayerSerializre
        filter_backends = (filters.SearchFilter,filters.OrderingFilter,)
        ordering_fields = ('avg',)
        search_fields = ('playername',)

class TeamsViewSet2(viewsets.ModelViewSet):
        queryset = Teams.objects.all()
        serializer_class = TeamsSerializreteams

class ArticlesViewSet2(viewsets.ModelViewSet):
        queryset = Articles.objects.all()
        serializer_class = ArticleSerializre
        filter_backends = (filters.SearchFilter,filters.OrderingFilter)
        search_fields = ('title',)
        ordering_fields = ('date',)

# class MembersViewSet(viewsets.ModelViewSet):
#         queryset = Members.objects.all()
#         serializer_class = MembersSerializreteams
