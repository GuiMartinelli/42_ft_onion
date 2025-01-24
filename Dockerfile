FROM nginx

RUN apt update && apt install -y tor

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./app /var/www/html
COPY torrc /etc/tor/torrc

EXPOSE 80

CMD service tor start & nginx -g "daemon off;"