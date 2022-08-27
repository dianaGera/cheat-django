from django import forms
from django.contrib.auth import models
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.template.defaultfilters import default, slugify
from captcha.fields import CaptchaField
from ckeditor.widgets import CKEditorWidget

from .models import Topic, Category, SubCategory


class CreateTopicTest(forms.Form):
    title = forms.CharField(max_length=225)
    slug = forms.CharField(max_length=225)
    description = forms.CharField(widget=forms.Textarea, required=False)
    content = forms.CharField(widget=CKEditorWidget, required=False)
    html_content = forms.CharField(widget=forms.Textarea, required=False)
    image = forms.ImageField(required=False)
    category = forms.ModelChoiceField(queryset=Category.objects.all(), initial=Category.objects.get(title='Django'))
    subcategory = forms.ModelChoiceField(queryset=SubCategory.objects.all(), initial=SubCategory.objects.get(title="User's post"))


class CreateTopic(forms.ModelForm):
    class Meta:
        model = Topic
        fields = ['title', 'slug', 'description', 'content',
                  'html_content', 'image', 'category',
                  'subcategory']
        widgets = {
            'description': forms.Textarea(attrs={'rows': 3}),
            'html_content': CKEditorWidget
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['category'].initial = Category.objects.get(title='Django')
        self.fields['subcategory'].initial = SubCategory.objects.get(title='Другое')

    def save(self,  *args, **kwargs):
        self.fields['slug'] = slugify(self.fields['title'])
        return super(CreateTopic, self).save(*args, **kwargs)


class RegisterUser(UserCreationForm):
    username = forms.CharField(max_length=50, help_text='Print your username')
    firstname = forms.CharField(label='First name', required=False)
    lastname = forms.CharField(label='Last name', required=False)
    email = forms.EmailField(label='Email address', required=False)
    password1 = forms.CharField(label='Password', max_length=50, widget=forms.PasswordInput())
    password2 = forms.CharField(label='Confirm the password', max_length=50, widget=forms.PasswordInput())

    class Meta:
        model = User
        fields = ('username', 'firstname', 'lastname', 'email', 'password1', 'password2')


class Contact(forms.Form):
    subjects = forms.CharField()
    message = forms.CharField(widget=forms.Textarea(attrs={'rows': 5}))
    captcha = CaptchaField(label='')