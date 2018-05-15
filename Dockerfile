# Use an official runtime as a parent image
FROM openjdk:8-jdk-alpine

# Identify the working directory (the container)
WORKDIR /home

# Copy the current directory contents including the JAR and YAML
# into the container
COPY /twc-naturalsearchV2-svc.jar /home/twc-naturalsearchV2-svc.jar
COPY /twc-naturalsearchV2-svc.dev.yaml /home/twc-naturalsearchV2-svc.dev.yaml

# Make port 9090 and 9191 available to the world outside this container
EXPOSE 9090 9191

# Run app.py when the container launches
CMD ["java", "-jar /home/twc-naturalsearchV2-svc.jar server /home/twc-naturalsearchV2-svc.dev.yaml"]