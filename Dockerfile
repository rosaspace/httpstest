# Dockerfile
FROM python:3.12-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE=readme.settings

# Copy the project files
# Set the working directory
COPY .  /usr/src/app
WORKDIR /usr/src/app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Collect static files (for Django)
RUN python manage.py collectstatic --noinput

# Expose the port the app runs on
EXPOSE 8889

# Start the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8889"]
