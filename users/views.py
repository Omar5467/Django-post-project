from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login,logout
from django.contrib.auth.decorators import login_required


# Create your views here.
# @login_required(login_url='users:login')
def register_view(request):
    if request.method == "POST":
        form = UserCreationForm(request.POST)
        if form.is_valid():
            login(request,form.save())
            return redirect("posts:post_list")
    else:
        form = UserCreationForm()
    
    return render(request,'users/register.html',{"form":form})


def login_view(request):
    if request.method == "POST":
        form = AuthenticationForm(data=request.POST)
        if form.is_valid():
            #login here
            login(request, form.get_user())
            if 'next' in request.POST:
                return redirect(request.POST.get('next','/'))
            else:
                return redirect('/')
    else:
        form = AuthenticationForm()
    return render(request, 'users/login.html',{"form":form})

def logout_view(request):
    if request.method == "POST":
        logout(request)
        return redirect("users:login")