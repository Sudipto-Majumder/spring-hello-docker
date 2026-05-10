FROM eclipse-temurin:17-jdk
WORKDIR /hello
COPY target/*.jar hello.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","hello.jar"]

