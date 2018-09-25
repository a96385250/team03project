from django.shortcuts import render
from django.http import HttpResponse
from .models import Players,Teams
# Create your views here.

def player(request) :
    # players = Players.objects.all()
    strJS = "<script>location.href='/edit/aien0313crte/'</script>"
    return HttpResponse(strJS)