FROM nginx

RUN apt update && apt-get install -y tor openssh-server

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./app /var/www/html
COPY torrc /etc/tor/torrc
COPY sshd_config /etc/ssh/sshd_config

RUN useradd -m -s /bin/bash onion && \
	echo 'onion:onion' | chpasswd

EXPOSE 80 4242

CMD service tor start && \
	service ssh start && \
	nginx -g "daemon off;"