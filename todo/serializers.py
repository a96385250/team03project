from rest_framework import serializers
import sys
import os
sys.path.append(os.path.abspath('../search'))
from search.models import Articles
<<<<<<< HEAD
from .playermodels import Players,Teams
from signin.models import Members
=======

>>>>>>> ced8a058fc8ebc71742fc3541a35b2ea06942f90

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
        
