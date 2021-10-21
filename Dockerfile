FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Pontianak
RUN apt update && apt install apache2 tzdata -y
COPY index.html /var/www/html
ENTRYPOINT "apachectl" "-DFOREGROUND"
