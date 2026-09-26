FROM nginx:alpine

# Default Nginx page remove
RUN rm -rf /usr/share/nginx/html/*

# Website files copy
COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
