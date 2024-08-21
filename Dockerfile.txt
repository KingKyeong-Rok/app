FROM tomcat:latest
COPY index.html /usr/local/tomcat/webapps/test/
COPY static /usr/local/tomcat/webapps/test/
ADD sample.war /usr/local/tomcat/webapps

EXPOSE 8080