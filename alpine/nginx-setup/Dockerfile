FROM  alpine
MAINTAINER Leonel Nunez "leonel@enelserver.com"


RUN mkdir /run/nginx


COPY volconf.tar.bz2 /
COPY setup.sh /

cmd ["/setup.sh"]

#cmd ["sh"]
