FROM nginx:latest
LABEL Author="Lucas Silva" 
COPY /public /var/www/public
COPY /docker/config/nginx.conf /etc/nginx/nginx.conf