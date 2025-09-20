# Gunakan image NGINX resmi
FROM nginx:alpine

# Salin file website ke direktori default NGINX
COPY website/ /usr/share/nginx/html/

# (Opsional) Salin konfigurasi NGINX kustom jika diperlukan
# COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]