FROM openjdk:8-jdk-alpine
COPY target/container-demo.jar container-demo.jar
EXPOSE 8080
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "container-demo.jar"]