FROM openjdk:8-jdk-alpine
#Use following two line to run using user privileges to avoid using 'root'
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]