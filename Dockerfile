# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app into the container
COPY . .

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["python", "app.py"]
