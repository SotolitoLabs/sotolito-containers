FROM  alpine
MAINTAINER Leonel Nunez "leonel@enelserver.com"

RUN apk --no-cache update && \
apk upgrade &&\
apk add nginx tzdata

RUN cp /usr/share/zoneinfo/America/Chihuahua /etc/localtime
RUN echo "America/Chihuahua" >/etc/timezone

RUN apk del tzdata
RUN rm -rf /var/cache/apk


RUN mkdir /run/nginx

#RUN ln -sf /dev/stdout /var/log/nginx/access.log \
#&& ln -sf /dev/stderr /var/log/nginx/error.log


EXPOSE 80 443


cmd ["nginx", "-g", "daemon off;"]

#cmd ["sh"]
