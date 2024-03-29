FROM nginx:alpine

ENV NGINX_PORT=80

COPY ./default.conf /etc/nginx/templates/default.conf.template
COPY ./index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

