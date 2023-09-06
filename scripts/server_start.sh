#!/usr/bin/env bash
cd /home/ec2-user/server
mvn clean package
#mvn spring-boot:run -Drun.jvmArguments='-Dserver.port=9091' > /dev/null 2> /dev/null < /dev/null &
sudo java -jar spring-boot-sample-app-1.0.0.jar \
    *.jar > /dev/null 2> /dev/null < /dev/null &