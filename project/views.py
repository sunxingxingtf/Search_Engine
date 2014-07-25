from django.http import HttpResponse
from django.shortcuts import render_to_response
from search import process


def search(request):
    if 'wd' in request.GET:
		wd = request.GET['wd']
		choice=request.GET['method']
		ST,SP = process(wd,choice)
		return render_to_response('main.html',locals())
    else:
		return render_to_response('index.html',{})
