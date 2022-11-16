"""
Django settings for semillerosadminsys project.

Generated by 'django-admin startproject' using Django 4.0.6.

For more information on this file, see
https://docs.djangoproject.com/en/4.0/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/4.0/ref/settings/
"""

from decouple import config
import os
import cloudinary_storage

# Build paths inside the project like this: BASE_DIR / 'subdir'.
#BASE_DIR = Path(__file__).resolve().parent.parent
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = config('SECRET_KEY')

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = config('DEBUG', cast=bool, default=True)

ALLOWED_HOSTS = ['*']


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'tematica_app',
    'semillero_app',
    'carrera_app',
    'usuarios_app',
    'proyectos_app',
    'eventos_app',
    'config_semilleros_app',
    'evaluaciones_orales',
    'evaluaciones_preseleccion',
    'asignacion_evaluador',
    'admin_honeypot',
    'storages',
    'cloudinary_storage',
    'cloudinary',
    'import_export',
    'dynamic_models',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'django_session_timeout.middleware.SessionTimeoutMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware',
]

SESSION_EXPIRE_SECONDS = 1800
SESSION_EXPIRE_AFTER_LAST_ACTIVITY = True
SESSION_TIMEOUT_REDIRECT = 'login-page'

IMPORT_EXPORT_USE_TRANSACTIONS = True

ROOT_URLCONF = 'semillerosadminsys.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': ['templates'],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'semillerosadminsys.wsgi.application'
AUTH_USER_MODEL = 'usuarios_app.Usuario'


# Database
# https://docs.djangoproject.com/en/4.0/ref/settings/#databases

#DATABASES = {
#   'default': {
#        'ENGINE': 'django.db.backends.sqlite3',
#        'NAME': BASE_DIR / 'db.sqlite3',
#   }
#}

#DATABASES = {
 #  'default': {
 #       'ENGINE': 'django.db.backends.sqlite3',
 #       'NAME': BASE_DIR  + 'db.sqlite3',
 #  }
#}
      
DATABASES = {
   'default': {
      'ENGINE': 'django.db.backends.postgresql',
      'USER': 'hgmenwrwkjrpsu',
      'NAME': 'd8ggodnm3lnapm',
      'PASSWORD': 'a5bca8d9e3ed321649aafe8e213e5285a5255581a8d977f658443f756f863911',
      'HOST': 'ec2-44-210-36-247.compute-1.amazonaws.com'
  }
}

# Password validation
# https://docs.djangoproject.com/en/4.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/4.0/topics/i18n/

LANGUAGE_CODE = 'es-ar'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.0/howto/static-files/

CLOUDINARY_STORAGE = {
    'CLOUD_NAME': config('CLOUD_NAME'),
    'API_KEY': config('API_KEY_CLOUDINARY'),
    'API_SECRET':config('API_SECRET_CLOUDINARY'),
}

#comentar en produccion
#STATIC_URL = '/static/'
#STATIC_ROOT = BASE_DIR + '\static'
#STATICFILES_DIRS = [
    #os.path.join(BASE_DIR, 'static/')
#]

AWS_ACCESS_KEY_ID = config('AWS_ACCESS_KEY_ID')
AWS_SECRET_ACCESS_KEY = config('AWS_SECRET_ACCESS_KEY')
AWS_STORAGE_BUCKET_NAME = config('AWS_STORAGE_BUCKET_NAME')
AWS_S3_FILE_OVERWRITE = False
AWS_DEFAULT_ACL = None
#DEFAULT_FILE_STORAGE = 'storages.backends.s3boto3.S3Boto3Storage'
STATICFILES_STORAGE = 'storages.backends.s3boto3.S3StaticStorage'
STATIC_URL = '/static/'

DEFAULT_FILE_STORAGE = 'cloudinary_storage.storage.RawMediaCloudinaryStorage'

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

from django.contrib.messages import constants as messages

MESSAGE_TAGS = {
    messages.ERROR: 'danger',
}

ANYMAIL = {"SENDGRID_API_KEY": config('SENDGRID_API_KEY'),}
EMAIL_DEFAULT = config('EMAIL_DEFAULT')
EMAIL_BACKEND = config('EMAIL_BACKEND')
DEFAULT_FROM_EMAIL = config('DEFAULT_FROM_EMAIL')

# Default primary key field type
# https://docs.djangoproject.com/en/4.0/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

#try:
   # from .local_settings import DATABASES, DEBUG
#except ImportError as e:
   # print('Error: ', e.msg)    
   


#AWS_ACCESS_KEY_ID = config('AWS_ACCESS_KEY_ID')
#AWS_SECRET_ACCESS_KEY = config('AWS_SECRET_ACCESS_KEY')
#AWS_STORAGE_BUCKET_NAME = config('AWS_STORAGE_BUCKET_NAME')
#AWS_S3_CUSTOM_DOMAIN = f'{AWS_STORAGE_BUCKET_NAME}.s3.amazonaws.com'
#AWS_LOCATION = 'static'
#STATIC_URL = f'https://{AWS_S3_CUSTOM_DOMAIN}/{AWS_LOCATION}/'

#AWS_S3_FILE_OVERWRITE = False
#AWS_DEFAULT_ACL = None
#DEFAULT_FILE_STORAGE = 'storages.backends.s3boto3.S3Boto3Storage'
#STATICFILES_STORAGE = 'storages.backends.s3boto3.S3StaticStorage'

#STATICFILES_DIRS = (os.path.join(BASE_DIR, 'static'),)
#MEDIA_URL = '/media/'
#MEDIA_ROOT = os.path.join(BASE_DIR, 'media')   
