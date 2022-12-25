from django.shortcuts import render

# Create your views here.

from rest_framework.views import APIView
from rest_framework.response import Response

class index(APIView):
    def get(self, request, format=None):
        return Response('Hello World!')

class index2(APIView):
    def get(self, request, format=None):
        return Response('byby')            