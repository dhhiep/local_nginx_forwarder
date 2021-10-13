# Base image
FROM nginx:1.17.5

# Define working directory.
WORKDIR /etc/nginx

# Use the "exec" form of CMD so Nginx shuts down gracefully on SIGTERM (i.e. `docker stop`)
CMD [ "nginx", "-g", "daemon off;" ]

# Expose ports.
EXPOSE 443
