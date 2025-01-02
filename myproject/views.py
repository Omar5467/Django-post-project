from django.http import HttpResponse
from django.shortcuts import render
from django.contrib.auth.decorators import login_required


# @login_required(login_url='users/login')
def homepage(request):
    # return HttpResponse('Hello world! i`m home')
    return render(request,'home.html')

# @login_required(login_url='users/login.html')
def about(request):
    # return HttpResponse('Hello world i`m About')
    return render(request, 'about.html')