from django.shortcuts import render, redirect
from .models import Posts
from django.contrib.auth.decorators import login_required
from . import forms
# from django.views.static import serve
# Create your views here.
# @login_required(login_url='users/login')
def post_list(request):
    post1 = Posts.objects.all().order_by('-date')
    return render(request,'posts/post_list.html',{ 'post1': post1 })

# @login_required(login_url='users/login')
def post_page(request, slug):
    post2 = Posts.objects.get(slug=slug)
    return render(request,'posts/post_page.html',{ 'post2': post2 })


@login_required(login_url='/users/login/')
def new_post(request):
    # post2 = Posts.objects.get(slug=slug)
    if request.method == "POST":
        form = forms.CreatePost(request.POST,request.FILES)
        if form.is_valid():
            #save
            newpost= form.save(commit=False)
            newpost.author = request.user
            newpost.save()
            return redirect('posts:post_list')
        else:
            # Handle form validation errors
            return render(request, 'posts/post_new.html', {'form': form})
        
    else:
        form = forms.CreatePost()
    return render(request,'posts/post_new.html',{ 'form': form })
   