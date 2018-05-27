from django.conf.urls import include, url
from django.urls import path
from blog.views import BlogPageView



urlpatterns = [
	path('blog/', BlogPageView.as_view(), name='blog'),
]

# views.BlogPageView.as_view(), name='blog'
