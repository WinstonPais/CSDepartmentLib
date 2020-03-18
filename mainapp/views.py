from django.shortcuts import render

# Create your views here.
def index(req):
    return render(req,'mainapp/index.html')

def logIn(req):
    return render(req,'mainapp/login.html')

def signUp(req):
    return render(req,'mainapp/signup.html')

def contact(req):
    return render(req,'mainapp/contact.html')
