FROM openjdk:17-jdk-slim
CMD ["cd", "../../.."]
CMD ["mvn", "clean", "package"]
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} src/main/docker/application.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "application.jar"]