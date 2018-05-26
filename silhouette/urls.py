# silhouette/urls.py
from django.conf.urls import include, url
from silhouette import views

urlpatterns = [
    url(r'^$', views.HomePageView.as_view(), name='home'),
	url(r'^about/$', views.AboutPageView.as_view(), name='about'),
]
