# Verwende das offizielle Nginx-Image als Basis
FROM nginx:alpine

# Arbeitsverzeichnis im Container
WORKDIR /usr/share/nginx/html1

# Kopiere die statischen Dateien
COPY public/* ./
COPY public/img ./img

# Kopiere die angepasste NGINX-Konfigurationsdatei
COPY nginx.conf /etc/nginx/nginx.conf

# Exponiere den Standard-Nginx-Port
EXPOSE 80

# Starte Nginx
CMD ["nginx", "-g", "daemon off;"]
