FROM library/java:openjdk-7-jdk

MAINTAINER Zach Cox zach.cox@banno.com

ENV DEBIAN_FRONTEND noninteractive
ENV MESOS_VERSION 0.21.1
ENV PKG_RELEASE 1.0

WORKDIR /tmp

RUN \
  apt-get update && \
  apt-get install -y libsvn1 && \
  curl -s -O https://downloads.mesosphere.io/master/ubuntu/14.04/mesos_${MESOS_VERSION}-${PKG_RELEASE}.ubuntu1404_amd64.deb && \
  dpkg -i mesos_${MESOS_VERSION}-${PKG_RELEASE}.ubuntu1404_amd64.deb && \
  rm mesos_${MESOS_VERSION}-${PKG_RELEASE}.ubuntu1404_amd64.deb

ENV MESOS_NATIVE_JAVA_LIBRARY /usr/lib/libmesos.so
ENV MESOS_NATIVE_LIBRARY /usr/lib/libmesos.so
