from django.http import HttpResponse
from django.shortcuts import render
from django.template import loader

# Create your views here.

def minimo_vital(request):
    template = loader.get_template('minimo_vital.html')
    return HttpResponse(template.render({}, request))
