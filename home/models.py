from django.contrib.auth.models import User
from django.db import models
from django.urls import reverse


class Topic(models.Model):
    title = models.CharField('Title', max_length=150)
    description = models.TextField('Description', max_length=500, blank=True)
    content = models.TextField('Content', blank=True)
    html_content = models.TextField('HTML Content', blank=True)
    data = models.DateTimeField('Data', auto_now_add=True)
    update_data = models.DateTimeField('Updated', auto_now=True)
    is_published = models.BooleanField('Publish', default=True)
    image = models.ImageField('Image', upload_to='image/%Y/%m', blank=True)
    category = models.ForeignKey('Category', on_delete=models.PROTECT, verbose_name='Category')
    subcategory = models.ForeignKey('SubCategory', on_delete=models.SET_NULL,
                                    verbose_name='Subcategory', null=True, blank=True)
    slug = models.SlugField('URL-name', max_length=225, unique=True, null=True, db_index=True)
    author = models.ForeignKey(User, on_delete=models.PROTECT, null=True, blank=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name_plural = 'Topics'
        ordering = ['id']

    def get_absolute_url(self):
        return reverse('subcategory', kwargs={'slug': self.slug})


class Category(models.Model):
    title = models.CharField('Title', max_length=150)
    image = models.ImageField('Image', upload_to='image/%Y/%m', blank=True)
    slug = models.SlugField('Slug', max_length=225, unique=True, null=True, db_index=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name_plural = 'Categories'

    def get_absolute_url(self):
        return reverse('category', kwargs={'slug': self.slug})


class SubCategory(models.Model):
    title = models.CharField('Title', max_length=150)
    category = models.ForeignKey(Category, on_delete=models.PROTECT,
                                 null=True, blank=True, verbose_name='Категория')
    slug = models.SlugField('Slug', max_length=225, unique=True, null=True, db_index=True)
    order = models.IntegerField(null=True, blank=True, unique=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name_plural = 'Subcategories'
        ordering = ['order']

    def get_absolute_url(self):
        return reverse('subcategory', kwargs={'slug': self.slug})
