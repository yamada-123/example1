# step1 ... make Ubuntu Image
FROM ubuntu:latest
# step2 ... installnginx
RUN apt-get update && apt-get install -y -q nginx
# step3 ... copy html file
COPY index.html /var/www/html
# step4 ... expose port no 80
EXPOSE 80
# step5 ... start nginx
CMD ["nginx" "-g","daemon off;"]