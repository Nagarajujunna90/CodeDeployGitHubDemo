#!/usr/bin/env bash
cd /home/ec2-user/server
sudo java -jar spring-boot-sample-app-1.0.0.jar \
    *.jar > /dev/null 2> /dev/null < /dev/null &