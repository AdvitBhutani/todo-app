# Use OpenJDK 17 as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built jar file into the container
COPY target/todo-app-1.0.0.jar app.jar

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
