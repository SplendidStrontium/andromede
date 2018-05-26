from django.http import HttpResponse

def blog(request):
	return HttpResponse("Here be a blog")

