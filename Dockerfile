FROM eclipse-temurin:21-jdk-alpine
RUN mvn clean package -DskipTests
WORKDIR /app
COPY target/users-service-0.0.1-SNAPSHOT.jar app.jar
LABEL authors="NdimphiweBontsi"

ENTRYPOINT ["java", "-jar","app.jar"]