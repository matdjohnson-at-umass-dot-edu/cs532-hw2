FROM ubuntu:24.10

RUN apt-get -y update
RUN apt-get -y install build-essential

RUN mkdir /build
COPY src/Makefile /build/Makefile
COPY src/hw2.cpp /build/hw2.cpp
COPY src/build-and-run.sh /build/build-and-run.sh
COPY src/entrypoint.sh /entrypoint.sh
RUN chmod a+rwx /build/build-and-run.sh
RUN chmod a+rwx /entrypoint.sh

ENTRYPOINT /entrypoint.sh
