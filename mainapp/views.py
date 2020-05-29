from django.shortcuts import render,redirect,get_object_or_404
from django.contrib.auth import authenticate, login, logout
from django.urls import reverse
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect, HttpResponse
from datetime import date
from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.core.mail import EmailMessage
from django.utils.encoding import force_bytes, force_text

from django.contrib.auth.models import User
from .tokens import account_activation_token
from mainapp.forms import UserForm,UserProfileInfoForm
from mainapp.models import LibraryAllBooks,BooksLent,Bookavail,bkstat
# Create your views here.


def index(req):
    return render(req,'mainapp/index.html')

@login_required
def dele(req,**kwargs):
    libobj=get_object_or_404(LibraryAllBooks,AccesssionNumber=kwargs['pk'])
    obj=get_object_or_404(BooksLent,AccesssionNumber=libobj)
    if req.method == 'POST':
        if req.user == obj.user:
            obj.delete()
            libobj.Availability = get_object_or_404(Bookavail,bk="AVAILABLE")
            libobj.save()
        else:
            messages.error(req, "Cannot Delete other user's book Registration")
    else:
        messages.error(req, "Unknown Error")
    return HttpResponseRedirect(reverse('mainapp:mybooksPage'))

@login_required
def mybooks(req):
    context={
        'books':BooksLent.objects.all().filter(user=req.user),
    }
    return render(req,'mainapp/mybooks.html',context)

@login_required
def reserve(req,**kwargs):
    obj=get_object_or_404(LibraryAllBooks,AccesssionNumber=kwargs['pk'])
    numberOfBooksPendingForUser=len(BooksLent.objects.filter(user=req.user,status=get_object_or_404(bkstat,bkst="Pending")))
    if numberOfBooksPendingForUser >= 3:
        messages.error(req, "Max pending books can be 3 collect your pending books first from the librarian.")
    else:
        if str(obj.Availability) == "AVAILABLE" :
                print(get_object_or_404(Bookavail,bk="nan"))
                obj.Availability = get_object_or_404(Bookavail,bk="nan")
                obj.save()
                stobj=get_object_or_404(bkstat,bkst="Pending")
                print(req.user)
                obj2=BooksLent(user=get_object_or_404(User,username=req.user),AccesssionNumber=kwargs['pk'],Lent_on=date.today(),status=stobj)
                obj2.save()
                messages.success(req, "Book Reserved Collect The book from the library and confirm the Booking")
        else:
            messages.error(req, "Unknown Error")
    context={
        'objects':LibraryAllBooks.objects.all()
    }
    return render(req,'mainapp/userselect.html',context)

@login_required
def userselect(req):
    context={
        'objects':LibraryAllBooks.objects.all(),
    }
    return render(req,'mainapp/userselect.html',context)

def user_logIn(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)

        # If we have a user
        if user:
            #Check it the account is active
            # if user.is_active:
                # Log the user in.
            login(request,user)
                # Send the user back to some page.
                # In this case their homepage.
            print("User Logged in: "+str(username))
            return HttpResponseRedirect(reverse('mainapp:userselectPage'))
            # else:
                # If account is not active:
                # messages.error(request,'Your account is not active.')
                # return redirect('mainapp:LogInPage')
        else:
            ob = User.objects.all().filter(username=username)
            if len(ob) != 0:
                messages.error(request,'Your account is not active.')
                return redirect('mainapp:LogInPage')
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
            user = user_form.save(commit=False)
            user.is_active = False
            # Hash the password
            user.set_password(user.password)
            # Update with Hashed password
            user.save()
            profile = profile_form.save(commit=False)
            profile.user = user
            profile.save()




            current_site = get_current_site(req)
            mail_subject = 'Activate your blog account.'
            message = render_to_string('mainapp/acc_active_email.html', {'user': user,
                                                                 'domain': current_site.domain,
                                                                 'uid':force_text(urlsafe_base64_encode(force_bytes(user.pk))),#urlsafe_base64_encode(force_bytes(user.pk)),
                                                                 'token':account_activation_token.make_token(user),
                                                                 })

            to_email = user_form.cleaned_data.get('email')
            email = EmailMessage(mail_subject, message, to=[to_email])
            email.content_subtype = "html"
            email.send()
            messages.success(req, "Please confirm your email address to complete the registration")



            return HttpResponseRedirect(reverse('mainapp:LogInPage'))
        else:
            # One of the forms was invalid if this else gets called.
            print(user_form.errors,profile_form.errors)

    else:
        # Was not an HTTP post so we just render the forms as blank.
        user_form = UserForm()
        profile_form = UserProfileInfoForm()

    return render(req,'mainapp/signup.html')


def activate(request, uidb64, token):
    try:
        uid = force_text(urlsafe_base64_decode(uidb64))
        user = User.objects.get(pk=uid)
    except(TypeError, ValueError, OverflowError, User.DoesNotExist):
        user = None
    if user is not None and account_activation_token.check_token(user, token):
        user.is_active = True
        user.save()
        login(request, user)
        # return redirect('home')
        return HttpResponse('Thank you for your email confirmation. Now you can login your account.')
    else:
        return HttpResponse('Activation link is invalid!')

def contact(req):
    return render(req,'mainapp/contact.html')

def viewall(req):
    context={
        'objects':LibraryAllBooks.objects.all()
    }
    return render(req,'mainapp/viewall.html',context)

@login_required
def user_logout(request):
    # Log out the user.
    logout(request)
    # Return to homepage.
    return HttpResponseRedirect(reverse('index'))
