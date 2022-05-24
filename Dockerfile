FROM openjdk:8-jdk-alpine
COPY /target/demo-0.0.1.jar  app.jar
EXPOSE 8888
ENTRYPOINT ["java","-Dserver.port=8888","-jar","/app.jar"]