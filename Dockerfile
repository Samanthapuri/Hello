FROM openjdk:8u181-jdk
VOLUME /tmp
CMD pwd
CMD ls -l
ENV JAR_FILE=target/gs-spring-boot-docker-0.1.0.jar
COPY ${JAR_FILE} /
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
