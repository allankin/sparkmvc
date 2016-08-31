FROM centos:7
# Install java
RUN yum install -y java
# Install maven
RUN yum update -y

WORKDIR /app

ADD target/activation-1.1.jar /app/micro-user-service/lib
ADD lib/aopalliance-1.0.jar /app/micro-user-service/lib
ADD lib/aspectjweaver-1.8.5.jar /app/micro-user-service/lib
ADD lib/c3p0-0.9.1.2.jar /app/micro-user-service/lib
ADD lib/commons-lang3-3.4.jar /app/micro-user-service/lib
ADD lib/commons-logging-1.2.jar /app/micro-user-service/lib
ADD lib/fastjson-1.2.7.jar /app/micro-user-service/lib
ADD lib/hamcrest-core-1.3.jar /app/micro-user-service/lib
ADD lib/javaee-api-7.0.jar /app/micro-user-service/lib
ADD lib/javax.mail-1.5.0.jar /app/micro-user-service/lib
ADD lib/javax.servlet-3.0.0.v201112011016.jar /app/micro-user-service/lib
ADD lib/jetty-http-9.0.2.v20130417.jar /app/micro-user-service/lib
ADD lib/jetty-io-9.0.2.v20130417.jar /app/micro-user-service/lib
ADD lib/jetty-security-9.0.2.v20130417.jar /app/micro-user-service/lib
ADD lib/jetty-server-9.0.2.v20130417.jar /app/micro-user-service/lib
ADD lib/jetty-servlet-9.0.2.v20130417.jar /app/micro-user-service/lib
ADD lib/jetty-util-9.0.2.v20130417.jar /app/micro-user-service/lib
ADD lib/jetty-webapp-9.0.2.v20130417.jar /app/micro-user-service/lib
ADD lib/jetty-xml-9.0.2.v20130417.jar /app/micro-user-service/lib
ADD lib/junit-4.12.jar /app/micro-user-service/lib
ADD lib/log4j-1.2.17.jar /app/micro-user-service/lib
ADD lib/mockito-all-1.8.5.jar /app/micro-user-service/lib
ADD lib/mysql-connector-java-5.1.34.jar /app/micro-user-service/lib
ADD lib/slf4j-api-1.7.2.jar /app/micro-user-service/lib
ADD lib/slf4j-log4j12-1.7.2.jar /app/micro-user-service/lib
ADD lib/spark-core-2.0.0.jar /app/micro-user-service/lib
ADD lib/spring-aop-4.1.6.RELEASE.jar /app/micro-user-service/lib
ADD lib/spring-aspects-4.1.6.RELEASE.jar /app/micro-user-service/lib
ADD lib/spring-beans-4.1.6.RELEASE.jar /app/micro-user-service/lib
ADD lib/spring-context-4.1.6.RELEASE.jar /app/micro-user-service/lib
ADD lib/spring-context-support-4.1.6.RELEASE.jar /app/micro-user-service/lib
ADD lib/spring-core-4.1.6.RELEASE.jar /app/micro-user-service/lib
ADD lib/spring-expression-4.1.6.RELEASE.jar /app/micro-user-service/lib
ADD lib/spring-jdbc-4.1.6.RELEASE.jar /app/micro-user-service/lib
ADD lib/spring-test-4.1.6.RELEASE.jar /app/micro-user-service/lib
ADD lib/spring-tx-4.1.6.RELEASE.jar /app/micro-user-service/lib
ADD lib/userservice-bizapi-1.0.0-SNAPSHOT.jar /app/micro-user-service/lib
ADD lib/userservice-bizapi-impl-1.0.0-SNAPSHOT.jar  /app/micro-user-service/lib
ADD userservice-spark.jar /app/micro-user-service


EXPOSE 9002
ENV MICRO_SERVICE_RESOURCES_DIR /app/config/micro-service
CMD ["/usr/bin/java", "-jar", "userservice-spark.jar"]
