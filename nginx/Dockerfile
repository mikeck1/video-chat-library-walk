FROM nginx:alpine

# CMD npm --prefix client/ build
# COPY ./client/build /usr/share/nginx/html

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf 

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
