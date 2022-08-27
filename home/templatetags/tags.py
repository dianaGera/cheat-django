from django import template
from home.models import Category, Topic

register = template.Library()


@register.simple_tag()
def category():
    return Category.objects.all()[0:6]


@register.simple_tag()
def latest_post():
    return Topic.objects.filter(is_published=True).order_by('-update_data')[0:4]

@register.simple_tag()
def latest_post2():
    return Topic.objects.filter(is_published=True).order_by('-update_data')[4:8]


@register.filter(name='has_group')
def has_group(user, admin):
    return user.groups.filter(name=admin).exists()
