FROM openjdk:8u181-jdk
ENV JAR_FILE=tmp/build/ouput/gs-spring-boot-docke-0.1.0.jar
COPY ${JAR_FILE} /
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/gs-spring-boot-docke-0.1.0.jar"]
