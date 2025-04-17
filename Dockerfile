FROM amazonlinux:2

RUN yum update -y && \
    yum install -y java-1.8.0-openjdk

COPY DBmaestroAgent.jar /app/DBmaestroAgent.jar

WORKDIR /app

CMD java -jar DBmaestroAgent.jar \
    -Upgrade \
    -ProjectName "DEMO_SC" \
    -EnvName "Release Source" \
    -PackageName "V54" \
    -BackupBehavior True \
    -RestoreBehavior True \
    -Server "DOPX-BERKE:8020" \
    -AuthType DBmaestroAccount \
    -UserName "poc@dbmaestro.com" \
    -Password "7KI5tL3ywYAZLB8FUY9fzJyekemgtG45"