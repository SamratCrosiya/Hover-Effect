# Use the tiny Alpine version of Nginx
FROM nginx:alpine

# Copy all your local files (index.html, styles.css, etc.) 
# into the folder Nginx uses to serve web content
COPY . /usr/share/nginx/html

# Expose port 80 (standard for web traffic)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]