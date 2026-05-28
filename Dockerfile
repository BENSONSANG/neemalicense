# Use lightweight nginx to serve the static HTML file
FROM nginx:alpine

# Copy your HTML file into nginx's web root
COPY nema_license_page.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]