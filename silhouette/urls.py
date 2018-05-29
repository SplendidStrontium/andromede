# silhouette/urls.py
from django.conf.urls import include, url
from silhouette import views

urlpatterns = [
    url(r'^$', views.HomePageView.as_view(), name='home'),
	url(r'^about/$', views.AboutPageView.as_view(), name='about'),
	url(r'^contact/$', views.ContactPageView.as_view(), name='contact'),
        url(r'^tools/$', views.ToolsPageView.as_view(), name='tools'),
]
