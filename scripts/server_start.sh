#!/usr/bin/env bash
cd /home/ec2-user/server
sudo unzip spring-build-demo.zip
#mvn clean package
#mvn spring-boot:run -Drun.jvmArguments='-Dserver.port=9091' > /dev/null 2> /dev/null < /dev/null &
#sudo java -jar target/spring-boot-sample-app-1.0.0.jar \
#    *.jar > /dev/null 2> /dev/null < /dev/null &
sudo java -jar spring-build-demo/spring-boot-sample-app-1.0.0.jar \
    *.jar > /dev/null 2> /dev/null < /dev/null &