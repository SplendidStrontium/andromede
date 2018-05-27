from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import TemplateView



#class BlogPageView(TemplateView):
#    def get(self, request, **kwargs):
#        return render(request, '/var/www/andromede/blog/output/index.html', context=None)



class BlogPageView(TemplateView):
    template_name = "index_blog.html"

