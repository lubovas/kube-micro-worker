FROM openjdk:8-alpine
MAINTAINER lvasilev

EXPOSE 8080

RUN mkdir -p /usr/bin/kube-worker
WORKDIR /usr/bin/kube-worker

COPY /target/scala-2.13/kube-worker.jar ./kube-worker.jar

CMD ["java" ,"-jar" ,"kube-worker.jar"]