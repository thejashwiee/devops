FROM tomcat:8.0
COPY target/student.war /usr/local/tomcat/webapp
ENTRYPOINT /usr/local/tomcat/bin/./startup.sh
