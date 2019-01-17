FROM openjdk:8u181-jdk
VOLUME /tmp
ADD maven/gs-spring-boot-docker-0.1.0.jar app.jar
COPY ${JAR_FILE} /
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
