# Use a base image
FROM nginx:alpine

# Copy the application files to the container
COPY App/index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]
