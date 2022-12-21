FROM nginx:alpine

# RUN cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bkp
# COPY nginx.conf /etc/nginx/nginx.conf

# RUN rm -rf /etc/nginx/conf.d/*
# COPY services/* /etc/nginx/conf.d/

COPY site /usr/share/nginx/html

# EXPOSE 80 443