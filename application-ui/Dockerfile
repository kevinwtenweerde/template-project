FROM nginx:alpine

EXPOSE 8081

RUN rm -f /etc/nginx/conf.d/default.conf
RUN mkdir -p /etc/nginx/templates
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/server.conf.template /etc/nginx/templates
RUN chown 100 /etc/nginx/conf.d
COPY build /app


FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html
