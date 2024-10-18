
# Use an official Tomcat base image
FROM tomcat:9.0-jdk8-openjdk-slim

# Set environment variable to configure Tomcat
ENV CATALINA_OPTS="-Xms512m -Xmx1024m"

# Remove the default ROOT webapp in Tomcat to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Add your WAR file to Tomcat's webapps directory as ROOT.war
ADD target/student-registration.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (the default port for Tomcat)
EXPOSE 8002

# Set the command to run Tomcat
CMD ["catalina.sh", "run"]