# Use Tomcat with Java pre-installed
FROM tomcat:9.0-jdk17

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy your project files into the container
COPY . /usr/src/app

# Install Ant (needed to run your build.xml)
RUN apt-get update && \
    apt-get install -y ant && \
    rm -rf /var/lib/apt/lists/*

# Run Ant to build the project
RUN ant

# Deploy WAR (or other output) to Tomcat webapps
# Adjust this if your WAR is in a different folder
RUN cp build/*.war /usr/local/tomcat/webapps/

# Expose port 8080 (Tomcat default)
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
