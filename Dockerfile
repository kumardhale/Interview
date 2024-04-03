#***First file***
#Selecting base image
FROM ubuntu:latest

#Dockerfile maintainer
LABEL maintainer="Kumar"

# Set the working directory inside the container
WORKDIR /etc/nginx

# Install Nginx
RUN apt update -y && apt install nginx -y

# Exposing a port
EXPOSE 80

# Command to run when the container starts
CMD ["/usr/sbin/nginx"]


#***Second file***
# Use an existing Python image as a base
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install Flask
RUN pip install flask

# Expose port 5000
EXPOSE 5000

# Define the command to run when the container starts
CMD ["python", "app.py"]