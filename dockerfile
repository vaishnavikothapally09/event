FROM ubuntu:latest
LABEL maintainer="your_email@example.com"
RUN apt-get update -y && apt-get install -y nginx
RUN apt-get install -y vim curl tree wget
COPY index.html /usr/share/nginx/html/index.html
WORKDIR /usr/share/nginx/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]

