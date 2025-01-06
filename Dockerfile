# Use Python 3.9 slim image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PORT=8000

# Set work directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy only the requirements first
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy only the backend directory
COPY backend/ backend/

# Collect static files
RUN cd backend && python manage.py collectstatic --noinput

# Run gunicorn
CMD cd backend && gunicorn inventory.wsgi:application --bind 0.0.0.0:$PORT --workers 2 