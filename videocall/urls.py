from django.urls import path

from videocall.views import *

urlpatterns = [
    path('', VideoCall.as_view(), name='video_call'),
]
