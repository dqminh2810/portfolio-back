FROM maven:3.8.4-openjdk-17:onbuild AS buildenv
FROM openjdk:17-jdk-slim
# CMD ["mvn", "clean", "install"]
# RUN mvn clean install
ARG JAR_FILE=./target/*.jar
COPY --from=buildenv ${JAR_FILE} application.jar
# COPY ${JAR_FILE} application.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "application.jar"]
