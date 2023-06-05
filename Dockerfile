# Use a base image with Java installed
FROM adoptopenjdk:11-jdk-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/blog-app.jar app.jar

# Expose the port on which the Spring Boot application listens
EXPOSE 8080

# Set the entry point command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
