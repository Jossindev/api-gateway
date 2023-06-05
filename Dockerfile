# Use openjdk for base image
FROM openjdk:17-jdk-alpine

# Add a volume pointing to /tmp
VOLUME /tmp

EXPOSE 8090

# The application's jar file
ARG JAR_FILE=build/libs/api-gateway-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} my-app.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/my-app.jar"]





