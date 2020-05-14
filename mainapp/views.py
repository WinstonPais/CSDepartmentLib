from django.shortcuts import render,redirect
from django.contrib.auth import authenticate, login, logout
from django.urls import reverse
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect, HttpResponse


from mainapp.forms import UserForm,UserProfileInfoForm
from mainapp.models import LibraryAllBooks
# Create your views here.


def index(req):
    return render(req,'mainapp/index.html')

def userselect(req):
    return render(req,'mainapp/userselect.html')

def user_logIn(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)

        # If we have a user
        if user:
            #Check it the account is active
            if user.is_active:
                # Log the user in.
                login(request,user)
                # Send the user back to some page.
                # In this case their homepage.
                return HttpResponseRedirect(reverse('mainapp:viewAllPage'))
            else:
                # If account is not active:
                messages.error(request,'Your account is not active.')
                return redirect('mainapp:LogInPage')
        else:
            print("Someone tried to login and failed.")
            print("They used username: {} and password: {}".format(username,password))
            messages.error(request,'Incorrect username or password')
            return redirect('mainapp:LogInPage')
    else:
        return render(request,'mainapp/login.html')

def signUp(req):
    if req.method == 'POST':
        user_form = UserForm(data=req.POST)
        profile_form = UserProfileInfoForm(data=req.POST)
        if user_form.is_valid() and profile_form.is_valid():
            # Save User Form to Database
            user = user_form.save()
            # Hash the password
            user.set_password(user.password)
            # Update with Hashed password
            user.save()
            profile = profile_form.save(commit=False)
            profile.user = user
            profile.save()

            return HttpResponseRedirect(reverse('mainapp:LogInPage'))
        else:
            # One of the forms was invalid if this else gets called.
            print(user_form.errors,profile_form.errors)

    else:
        # Was not an HTTP post so we just render the forms as blank.
        user_form = UserForm()
        profile_form = UserProfileInfoForm()

    return render(req,'mainapp/signup.html')

def contact(req):
    return render(req,'mainapp/contact.html')

def viewall(req):
    context={
        'objects':LibraryAllBooks.objects.all()
    }
    return render(req,'mainapp/viewall.html',context)
