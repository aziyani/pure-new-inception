# This Dockerfile sets up an Nginx web server with a self-signed SSL certificate, ready to serve content securely

# Base Image: The container is based on Debian 12.5.
FROM debian:12.5

# Install Dependencies: Nginx and OpenSSL are installed.
RUN apt-get update && apt-get install -y nginx openssl

# Create SSL Certificate: A self-signed SSL certificate is created for secure connections.
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.example.com"

# Copy Configuration: A custom Nginx configuration file is copied into the container.
COPY ./tools/nginx.conf /etc/nginx/conf.d/

# Run Nginx: Nginx is set to run in the foreground when the container starts.
CMD ["nginx", "-g", "daemon off;"]
