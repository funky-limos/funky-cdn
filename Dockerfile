FROM nginx

MAINTAINER Nic Fellows

ADD conf/nginx.conf /etc/nginx/nginx.conf
#ADD conf/caching-proxy.conf /etc/nginx/conf.d/caching-proxy.conf
ADD conf/resizer.conf /etc/nginx/conf.d/resizer.conf

RUN mkdir /cdn

VOLUME /cdn

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
