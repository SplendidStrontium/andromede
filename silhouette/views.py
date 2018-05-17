from django.shortcuts import render
from django.views.generic import TemplateView

# Create your views here.
# there may be no real reason to have them different
# but the tutorial i was following did so...
# to show different methods
# correct later
class HomePageView(TemplateView):
    def get(self, request, **kwargs):
        return render(request, 'index.html', context=None)

class AboutPageView(TemplateView):
    template_name = "about.html"
