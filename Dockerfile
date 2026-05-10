# Stage 1 - Build the application
FROM maven:3.9.9-eclipse-temurin-17 AS build

WORKDIR /hello

COPY pom.xml .
COPY src ./src

RUN mvn clean package


# Stage 2 - Run the application
FROM eclipse-temurin:17-jre

WORKDIR /hello

COPY --from=build /app/target/*.jar hello.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","hello.jar"]

