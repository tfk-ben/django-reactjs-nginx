#!/bin/bash

# Collect static files
echo "Collect static files"
# python3 manage.py migrate --no-input
python3 manage.py collectstatic --no-input

# Start server
echo "Starting server"
# python3 manage.py runserver 0.0.0.0:8000
gunicorn server.wsgi:application --bind 0.0.0.0:8000 #look for wsgi.py

exec "$@"


# you must put in server/settings.py : 
# STATIC_URL = "/staticfiles/"
# STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')