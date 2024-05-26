<<<<<<< HEAD
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
=======
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY index.html .
COPY img/ img/
EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"] - ist bereits in nginx integriert - 
>>>>>>> 9249004a8eb2ed6bfd4d2afb296a913ebc5a112b
