# Use official Tomcat image with Java 17
FROM tomcat:9.0-jdk17

# Remove default webapps (optional, keeps container clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat’s webapps directory
COPY dist/your-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for Render
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
