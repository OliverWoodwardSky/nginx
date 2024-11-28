FROM nginx 
COPY /.html /udr/share/nginx/html/index.html
EXPOSE 80
