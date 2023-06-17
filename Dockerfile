FROM openjdk:17-jdk-slim
WORKDIR /app
ARG JAR_FILE=*.jar
RUN ls -al .
COPY ${JAR_FILE} /app/application.jar
RUN ls -al /app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "application.jar"]
