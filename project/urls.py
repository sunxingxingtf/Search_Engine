from django.conf.urls import patterns, include, url
from django.contrib import admin
from project.views import search
#from mysite.views import searchresult

urlpatterns = patterns('',
    (r'^s', search),
    #(r'^s', searchresult)
    # Examples:
    # url(r'^$', 'mysite.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    # url(r'^admin/', include(admin.site.urls)),
)
