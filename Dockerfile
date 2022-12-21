FROM nginx:alpine

# Setup PORT
ARG PORT
ENV PORT=$PORT
RUN echo "PORT: $PORT"

# Backup nginx.conf
RUN cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bkp

# Add custom nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Add path services
RUN rm -rf /etc/nginx/conf.d/*
COPY services/* /etc/nginx/conf.d/

EXPOSE 80 443

# Dev Run:
# docker build . -t api-gateway