from django.contrib import admin
from django.urls import path, include  # ← include is needed to connect app urls

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('core.urls')),  # ← this line connects your app's URLs
]

