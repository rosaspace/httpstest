from django.shortcuts import render

# Create your views here.
def index(request):
    template = "pwaweb/index.html"
    print("hello, index!")
    return render(request, template)
