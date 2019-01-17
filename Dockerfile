FROM openjdk:8u181-jdk
VOLUME /tmp
ENV JAR_FILE=target/hello.jar
COPY ${JAR_FILE} /
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/hello.jar"]
