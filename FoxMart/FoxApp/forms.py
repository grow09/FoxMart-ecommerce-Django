from django import forms
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User

from .models import *

from django.core.exceptions import ValidationError


class LoginUserForm(AuthenticationForm):
    username = forms.CharField(label='Login:', widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(label='Password:', widget=forms.PasswordInput(attrs={'class': 'form-control'}))

