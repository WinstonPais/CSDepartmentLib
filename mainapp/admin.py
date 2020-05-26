from django.contrib import admin
from mainapp.models import UserProfileInfo,LibraryAllBooks,BooksLent
# Register your models here

# username:winston
# password:testpassword

"""
sample user
username: 4SO17CS124
password: q
"""

admin.site.register(UserProfileInfo)
admin.site.register(LibraryAllBooks)
admin.site.register(BooksLent)
