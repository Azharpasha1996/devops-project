FROM openjdk:21 AS BUILD_IMAGE
RUN apt update && apt install maven -y
RUN git clone https://github.com/Azharpasha1996/devops-project.git
RUN cd devops-project && mvn install

FROM tomcat:9-jre21

RUN rm -rf /usr/local/tomcat/webapps/*

COPY --from=BUILD_IMAGE devops-project/target/devops-v2-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]