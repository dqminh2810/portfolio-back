# FROM openjdk:17-jdk-slim
# WORKDIR /app
# RUN mvn clean install
# ARG JAR_FILE=*.jar
# RUN ls -al .
# COPY ${JAR_FILE} /app/application.jar
# RUN ls -al /app
# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "application.jar"]

FROM maven:3.8.4-openjdk-17 as maven-builder
COPY src /app/src
COPY pom.xml /app
RUN mvn -f /app/pom.xml clean package -DskipTests

FROM openjdk:17-alpine
COPY --from=maven-builder app/target/*.jar /app/application.jar
WORKDIR /app

EXPOSE 8080
ENTRYPOINT ["java","-jar","application.jar"]
