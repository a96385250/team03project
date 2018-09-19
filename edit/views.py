from django.shortcuts import render

# Create your views here.
def edit(request):
    return render(request,'edit/edit.html')