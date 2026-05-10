FROM eclipse-temurin:17-jdk
WORKDIR /hello
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/hello.jar"]

