# from django.contrib import admin
# from django import forms
# from ckeditor_uploader.widgets import CKEditorUploadingWidget
# from .models import *


# class CKEditorAdminForm(forms.ModelForm):
#     content = forms.CharField(widget=CKEditorUploadingWidget(), required=False)

#     class Meta:
#         model = Topic
#         fields = '__all__'


# class TopicAdmin(admin.ModelAdmin):
#     form = CKEditorAdminForm
#     list_display = ['id', 'title', 'author', 'category',  'subcategory', 'slug',
#                     'data', 'update_data', 'is_published']
#     list_display_links = ['id', 'title', 'author']
#     list_editable = ['is_published', 'category', 'subcategory', 'slug']
#     list_filter = ['category', 'data', 'update_data', 'is_published']
#     prepopulated_fields = {'slug': ('title',)}


# class CategoryAdmin(admin.ModelAdmin):
#     list_display = ['title', 'slug']
#     list_display_links = ['title']
#     prepopulated_fields = {'slug': ('title', )}


# class SubCategoryAdmin(admin.ModelAdmin):
#     list_display = ['order', 'title', 'category', 'slug']
#     list_editable = ['category', 'slug']
#     prepopulated_fields = {'slug': ('title', )}


# admin.site.register(Topic, TopicAdmin)
# admin.site.register(Category, CategoryAdmin)
# admin.site.register(SubCategory, SubCategoryAdmin)