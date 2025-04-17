FROM amazonlinux:2

RUN yum update -y && \
    yum install -y java-1.8.0-openjdk

COPY DBmaestroAgent.jar /app/DBmaestroAgent.jar

WORKDIR /app

CMD pwd