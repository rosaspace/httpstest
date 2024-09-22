from django.shortcuts import render

# Create your views here.
def index(request):
    template = "httpsweb/index.html"
    return render(request, template)

from django.http import HttpResponse

def health_check(request):
    return HttpResponse("Django is up and running!")
