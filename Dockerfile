# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the build output to the Nginx HTML directory
COPY dist /usr/share/nginx/html

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
