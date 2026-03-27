FROM nginx:alpine

# Меняем порт в настройках nginx по умолчанию с 80 на 8080
RUN sed -i 's/listen[[:space:]]*80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html/index.html

# Указываем порт 8080
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]