from rest_framework import serializers
from .playermodels import Players,Teams
import sys
import os
sys.path.append(os.path.abspath('../search'))
from search.models import Articles


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
# class MembersSerializreteams(serializers.ModelSerializer):
#     class Meta:
#         model = Members
#         fields = '__all__'
        
