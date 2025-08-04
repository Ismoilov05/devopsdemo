# Base image
FROM python:3.10-slim

# Working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "app.py"]
