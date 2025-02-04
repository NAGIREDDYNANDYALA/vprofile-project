FROM tomcat:9.0
LABEL maintainer="your-email@example.com"

# Remove the default webapps to clean up
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file from the Nexus repository into Tomcat's webapps directory
ADD target/vprofile-v2.war /usr/local/tomcat/webapps/vprofile.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
