FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY index.html .
COPY img/ img/
EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"] - ist bereits in nginx integriert - 