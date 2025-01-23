FROM nginx

ENV APP_HOME /var/www/html

COPY ./app ${APP_HOME}

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
