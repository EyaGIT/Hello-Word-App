# Use the official Python 3.10 image as base
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory in the container
WORKDIR /app

# Copy the requirements file (if you have one)
# COPY requirements.txt .

# Install Flask
RUN pip install --no-cache-dir flask

# Copy the current directory contents into the container
COPY . .

# Expose port 5000 (default Flask port)
EXPOSE 5000

# Set the entrypoint to run the Flask app
CMD ["python", "main.py"]
