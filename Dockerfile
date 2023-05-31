FROM openjdk:8
EXPOSE 8080
ADD target/spring-boot-sample-app-1.0.0.jar spring-boot-sample-app.jar
ENTRYPOINT ["java","-jar","/spring-boot-sample-app.jar"]