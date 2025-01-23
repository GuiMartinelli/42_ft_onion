FROM nginx

ENV APP_HOME /var/www/html

RUN apt update && apt install -y tor

COPY ./app ${APP_HOME}
COPY torrc /etc/tor/torrc

RUN chmod 700 /var/www/html/ && chown -R debian-tor:debian-tor /var/www/html/
RUN service tor start

COPY nginx.conf /etc/nginx/nginx.conf
COPY run.sh /
RUN chmod +x /run.sh

EXPOSE 80

CMD ["/run.sh"]