FROM  alpine
MAINTAINER Leonel Nunez "leonel@enelserver.com"

RUN apk update && \
apk upgrade &&\
apk add postgresql tzdata
RUN cp /usr/share/zoneinfo/America/Chihuahua /etc/localtime
RUN echo "America/Chihuahua" >/etc/timezone

RUN apk del tzdata
RUN rm -rf /var/cache/apk

EXPOSE 5432
ENV PGDATA /var/lib/postgresql/10/data
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA"
COPY doinit /
#COPY creauser /
#VOLUME "$PGDATA"
cmd [ "su" ,"-c postgres", "postgres"]
#cmd ["sh"]


