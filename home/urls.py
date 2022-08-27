from django.urls import path
from .views import *
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    #path('', home, name='home'),
    path('', Home.as_view(), name='home'),
    path('registration/', registration, name='registration'),
    # path('registration/', RegistrationUser.as_view(), name='registration'),
    # path('login/', login_user, name='login'),
    path('login/', LoginUser.as_view(), name='login'),
    path('logout/', logout_user, name='logout'),
    # path('blog/', blog, name='blog'),
    path('blog/', Blog.as_view(), name='blog'),
    # path('category/<slug:slug>', category, name='category'),
    path('category/<slug:slug>', CategoryView.as_view(), name='category'),
    path('subcategory/<slug:slug>', subcategory, name='subcategory'),
    # path('subcategory/<slug:slug>', SubCategoryView.as_view(), name='subcategory'),
    path('create_topic/', create_topic, name='create_topic'),
    path('forum/', forum, name='forum'),
    # path('forum/', Forum.as_view(), name='forum'),
    path('portfolio/', Portfolio.as_view(), name='portfolio'),
    path('contact/', contact, name='contact'),
]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL,
                          document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)
