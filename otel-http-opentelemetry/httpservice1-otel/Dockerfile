FROM --platform=$TARGETPLATFORM eclipse-temurin:21
WORKDIR /app

# Download OpenTelemetry Java agent
RUN curl -L -o opentelemetry-javaagent.jar https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar

COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-javaagent:opentelemetry-javaagent.jar", "-jar", "app.jar"] 