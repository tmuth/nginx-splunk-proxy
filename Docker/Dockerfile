FROM nginx

RUN apt-get update && apt-get install -y \
  vim

# RUN rm /etc/nginx/conf.d/default.conf

# RUN rm /etc/nginx/conf.d/examplessl.conf

# COPY content /usr/share/nginx/html

# COPY conf /etc/nginx

COPY config/nginx.conf /etc/nginx/nginx.conf
