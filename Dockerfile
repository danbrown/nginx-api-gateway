FROM nginx:alpine

RUN cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bkp
COPY nginx.conf /etc/nginx/nginx.conf

COPY site /usr/share/nginx/html
