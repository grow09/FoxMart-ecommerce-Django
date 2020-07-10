from rest_framework import serializers

from .models import Products, Contributor


class Metaa(serializers.ModelSerializer):

    class Meta:
        model = Contributor
        fields = ("__all__")


class ProductSerializer(serializers.ModelSerializer):
    category = serializers.SlugRelatedField(slug_field="name", read_only=True)
    model = serializers.SlugRelatedField(slug_field="model", read_only=True)

    class Meta:
        model = Products
        exclude = ("cpu_serial", "id")