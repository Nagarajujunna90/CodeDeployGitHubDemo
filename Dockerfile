FROM openjdk:8
EXPOSE 8084
ADD target/springboot-sample-app-1.0.0.jar springboot-sample-app.jar
ENTRYPOINT ["java","-jar","/springboot-sample-app.jar"]