FROM eclipse-temurin:21-jre

WORKDIR /app

COPY rishta-confirmation-1.0.0.jar app.jar

EXPOSE 8080

ENV JAVA_OPTS=""

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Dserver.port=$PORT -jar app.jar"]
