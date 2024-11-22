# Use an official OpenJDK runtime as the base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code and README.md to the container
COPY HelloWorld.java .
COPY README.md .

# Compile the Java program
RUN javac HelloWorld.java

# Default command to run the application and print README.md
CMD java HelloWorld && echo "Content of README.md:" && cat README.md
