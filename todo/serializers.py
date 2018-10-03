from rest_framework import serializers
from .playermodels import Players,Teams

class PlayerSerializre(serializers.ModelSerializer):
    class Meta:
        model = Players
        fields = '__all__'

class TeamsSerializreteams(serializers.ModelSerializer):
    class Meta:
        model = Teams
        fields = '__all__'