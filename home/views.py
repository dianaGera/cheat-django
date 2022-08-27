from django.contrib import messages
from django.contrib.auth import login, logout
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.views import LoginView
from django.core.mail import send_mail
from django.core.paginator import Paginator
from django.shortcuts import render, redirect
from django.urls import reverse_lazy, reverse
from django.views.generic import TemplateView, DetailView, ListView, CreateView
from .models import Category, SubCategory, Topic
from .form import CreateTopic, CreateTopicTest, RegisterUser, Contact


class Home(TemplateView):
    template_name = 'home/home.html'
    extra_context = {'title': 'Diana Matkava'}

# def home(request):
#     return render(request, 'home/home.html', {'title': 'Diana Matkava'})


class Blog(ListView):
    model = Topic
    template_name = 'home/blog.html'
    context_object_name = 'topics'
    paginate_by = 5

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['categories'] = Category.objects.all()
        context['title'] = 'Blog'
        return context

    def get_queryset(self):
        return Topic.objects.filter(is_published=True)

# def blog(request):
#     topic = Topic.objects.filter(is_published=True)
#     category = Category.objects.filter(parent_category=None)
#     context = {
#         'topics': topic,
#         'categories': category,
#         'title': 'Blog'
#     }
#     return render(request, 'home/blog.html', context=context)


def subcategory(request, slug):
    topic = Topic.objects.filter(is_published=True, subcategory__slug=slug)
    category = Category.objects.all()
    subcategory = SubCategory.objects.filter(slug=slug)
    paginator = Paginator(topic, 3)
    page_number = request.GET.get('page', 1)
    page_obj = paginator.get_page(page_number)
    context = {
        'page_obj': page_obj,
        'topics': page_obj,
        'categories': category,
        'subcategories': subcategory,
        'slug': slug,
        'title': SubCategory.objects.get(slug=slug)
    }
    return render(request, 'home/blog.html', context=context)

# class SubCategoryView(ListView):
#     model = Topic
#     template_name = 'home/blog.html'
#
#     def get_context_data(self, *, object_list=None, **kwargs):
#         context = super().get_context_data(**kwargs)
#         context['categories'] = Category.objects.all()
#         context['topics'] = Topic.objects.all()
#         return context
#
#     def ger_queryset(self, *args, **kwargs):
#         return Topic.objects.filter(subcategory__slug=self.kwargs['slug'])


class CategoryView(ListView):
    model = Topic
    template_name = 'home/blog.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['categories'] = Category.objects.all()
        context['topics'] = Topic.objects.all().filter(is_published=True)
        return context

    def get_queryset(self, *args, **kwargs):
        return Topic.objects.filter(subcategory__slug=self.kwargs['slug'])

# def category(request, slug):
#     topic = Topic.objects.filter(is_published=True, category__slug=slug)
#     category = Category.objects.filter(parent_category=None,)
#     subcategory = SubCategory.objects.all()
#     context = {
#         'topics': topic,
#         'categories': category,
#         'subcategories': subcategory
#     }
#     return render(request, 'home/blog.html', context=context)




#
# class RegistrationUser(CreateView):
#     form_class = UserCreationForm
#     template_name = 'home/form.html'
#     success_url = reverse_lazy('home')
#     extra_context = {'title': 'Registration'}
#
# # This function returns to home page after successful registration
#     def form_valid(self, form):
#         user = form.save()
#         login(self.request, user)
#         return redirect('home')


def registration(request):
    if request.method == 'POST':
        form = RegisterUser(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            messages.success(request, 'Successful registration!')
            return redirect('home')
        else:
            messages.error(request, 'Unsuccessful registration!')
    else:
        form = RegisterUser()
    return render(request, 'home/form.html', {'form': form, 'title': 'Registration'})


class LoginUser(LoginView):
    form_class = AuthenticationForm
    template_name = 'home/form.html'
    extra_context = {'title': 'Login'}

#use this function if "LOGIN_REDIRECT_URL" constant is not defined on settings.py
    # def get_success_url(self):
    #     return reverse_lazy('home')


# def login_user(request):
#     if request.method == 'POST':
#         form = AuthenticationForm(request.POST)
#         if form.is_valid():
#             user = form.get_user()
#             login(request, user)
#             return redirect('home')
#     else:
#         form = AuthenticationForm()
#     return render(request, 'home/form.html', {'form': form, 'title': 'Login'})


def logout_user(request):
    logout(request)
    return redirect('home')


# def portfolio(request):
#     return redirect(request, 'home/portfolio.html', {'title': 'My Portfolio'})


class Portfolio(TemplateView):
    template_name = 'home/portfolio.html'
    extra_context = {'title': 'My Portfolio'}


def forum(request):
    return render(request, 'home/forum.html', {'title': 'Forum'})

# class Forum(TemplateView):
#     template_name = 'home/forum.html'


def contact(request):
    if request.method == 'POST':
        form = Contact(request.POST)
        if form.is_valid():
            send_mail(form.cleaned_data['subjects'], form.cleaned_data['message'], 'dianamatkava@ukr.net',
                             ['dianamatkava@online.ua'], fail_silently=False)
            messages.success(request, 'Message sent successfully!')
            return redirect('home')
        else:
            messages.error(request, 'Something went wrong((')
    else:
        form = Contact()
    return render(request, 'home/form.html', {'form': form, 'title': 'Contact with me'})



def create_topic(request):
    if request.method == "POST":
        form= CreateTopicTest(request.POST, request.FILES)
        if form.is_valid():
            post = Topic.objects.create(**form.cleaned_data)
            post.author = request.user
            post.save()
            return redirect('blog')
    else:
        form = CreateTopicTest()
    return render(request, 'home/create_topic.html', {'form': form, 'title': 'Create New Topic HERE:'})



# def create_topic(request):
#     if request.method == "POST":
#         form = CreateTopic(request.POST, request.FILES)
#         if form.is_valid():
#             post = form.save()
#             return redirect('blog')
#     else:
#         form = CreateTopic()
#     return render(request, 'home/form.html', context={'form': form, 'title': 'Create New Topic HERE:'})