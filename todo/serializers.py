from rest_framework import serializers
import sys
import os
sys.path.append(os.path.abspath('../search'))
from search.models import Articles
from .playermodels import Players,Teams
from signin.models import Members


class PlayerSerializre(serializers.ModelSerializer):
    class Meta:
        model = Players
        fields = '__all__'

class TeamsSerializreteams(serializers.ModelSerializer):
    class Meta:
        model = Teams
        fields = '__all__'

class ArticleSerializre(serializers.ModelSerializer):
    class Meta:
        model = Articles
        fields = '__all__'
class MembersSerializreteams(serializers.ModelSerializer):
    class Meta:
        model = Members
        fields = '__all__'
        
