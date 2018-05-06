FROM macpaw/internship

RUN rm -r /app

RUN apt-get update

RUN apt-get install -y logrotate unzip

RUN rm /etc/nginx/conf.d/nginx.conf || rm /etc/logrotate.d/dpkg

COPY /script/* /app

COPY cfg/dpkg /etc/logrotate.d

COPY cfg/supervisor /etc/logrotate.d

RUN chmod +x /app/script.sh

RUN /app/script.sh

COPY /src /app

COPY cfg/nginx.conf /etc/nginx/conf.d

EXPOSE 80
