#official open jdk image 
FROM openjdk:latest

#set working directory to app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY. /app

# Compile the Java code
RUN javac helloWorld.java

# Run the program when the container starts
CMD ["java", "HelloWorld"]
