from django.shortcuts import render
from .playermodels import Players,Teams
from .serializers import PlayerSerializre,TeamsSerializreteams
from rest_framework import viewsets

# Create your views here.
class PlayerViewSet(viewsets.ModelViewSet):
        queryset = Players.objects.all()
        serializer_class = PlayerSerializre

class TeamsViewSet2(viewsets.ModelViewSet):
        queryset = Teams.objects.all()
        serializer_class = TeamsSerializreteams