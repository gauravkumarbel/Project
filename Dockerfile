FROM nginx:alpine

# Purana default content hata do
RUN rm -rf /usr/share/index.html/*

# Apni website copy karo
COPY . /usr/share/index.html/

# Optional custom nginx config
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
