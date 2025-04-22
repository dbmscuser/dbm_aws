FROM amazonlinux:2

RUN yum update -y && \
    yum install -y java-1.8.0-openjdk

COPY DBmaestroAgent.jar /app/DBmaestroAgent.jar

WORKDIR /app

CMD pwd

CMD java -jar DBmaestroAgent.jar -GetPackages -ProjectName "PLANHUB_DEMO" -Server "35.209.117.147:8020" -AuthType DBmaestroAccount -UserName "poc@dbmaestro.com" -Password "7KI5tL3ywYAZLB8FUY9fzJyekemgtG45"
