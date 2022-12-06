FROM openjdk:17-jdk-slim
CMD ["mvn", "clean", "install"]
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} application.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "application.jar"]