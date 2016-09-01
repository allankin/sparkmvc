FROM centos:7
# Install java
RUN yum install -y java
# Install maven
RUN yum update -y

WORKDIR /app

RUN yum install maven -y

RUN mvn clean package
 
EXPOSE 80
ENV MICRO_SERVICE_RESOURCES_DIR /app/config/micro-service
CMD ["/usr/bin/java", "-jar", "target/sparkmvc-0.0.1-SNAPSHOT.jar"]
