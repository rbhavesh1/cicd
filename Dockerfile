FROM ubuntu:24.04

# Install a lightweight web server
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copy webpage files into nginx's web root
COPY index.html /var/www/html/
COPY style.css /var/www/html/
COPY script.js /var/www/html/

# Expose HTTP port
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
