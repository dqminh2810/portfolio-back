# FROM maven:3.8.4-openjdk-17 as maven
# WORKDIR /usr/src/app
# COPY . /usr/src/app
# RUN mvn clean install

FROM openjdk:17-jdk-slim
WORKDIR /usr/src/app
CMD ["mvn", "clean", "install"]
ARG JAR_FILE=./target/*.jar
# COPY --from=maven ${JAR_FILE} application.jar
COPY ${JAR_FILE} application.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "application.jar"]
