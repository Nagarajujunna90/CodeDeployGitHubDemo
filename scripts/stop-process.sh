#!/bin/bash

ps -ef | grep spring-boot-sample-app-1.0.0.jar | grep -v grep | awk '{print $2}' | xargs kill