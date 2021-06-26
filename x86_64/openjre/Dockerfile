FROM registry.centos.org/centos:8

ENV SOTOLITO_ADOPTOPENJDK_VERSION=14        \
    SUMMARY="SotolitoLabs AdoptOpenJDK JRE Image" \
    DESCRIPTION="AdoptOpenJDK JRE image for the SotolitoOS environment"

LABEL summary="$SUMMARY" \
      description="$DESCRIPTION" \
      io.k8s.description="$DESCRIPTION" \
      io.k8s.display-name="SotolitoOS AdoptOpenJDK 14" \
      io.openshift.expose-services="80:sotolito-openjre" \
      io.openshift.tags="web,sotolitoos,openjre" \
      name="sotolito/openjre" \
      version="14" \
      usage="docker run -d -e -p 80:80 sotolitolabs/openjre" \
      maintainer="Iván Chavero <ichavero@chavero.com.mx>"

ENV JAVA_HOME /opt/openjre-14
ENV PATH $JAVA_HOME/bin:$PATH
ENV DOWNLOAD_URL "https://github.com/AdoptOpenJDK/openjdk14-binaries/releases/download/jdk-14.0.2%2B12_openj9-0.21.0/OpenJDK14U-jre_x64_linux_openj9_14.0.2_12_openj9-0.21.0.tar.gz"

ENV JAVA_VERSION 14

RUN set -eux;                                 \
    curl -L -o openjre.tgz ${DOWNLOAD_URL};   \
    mkdir -p "${JAVA_HOME}";                  \
    tar --extract                             \
      --file openjre.tgz                      \
      --directory "${JAVA_HOME}"              \
      --strip-components 1                    \
      --no-same-owner;                        \
    rm openjre.tgz;                           

