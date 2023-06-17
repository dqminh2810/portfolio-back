FROM openjdk:17-jdk-slim
WORKDIR /app
RUN mvn clean install
ARG JAR_FILE=*.jar
RUN ls -al .
COPY ${JAR_FILE} /app/application.jar
RUN ls -al /app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "application.jar"]
