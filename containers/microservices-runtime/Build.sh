#!/bin/sh
#
docker-compose build microservices-runtime
MSR_JDBC_URL='jdbc:mysql://mysql:3306/webm' MSR_JDBC_PASSWORD=webm MSR_JDBC_USER=webm MSR_JNDI_PROVIDER='nsp://universal-messaging:9000' APPENDCLASSES=/opt/softwareag/common/lib/mysql-connector-java-5.1.47.jar docker-compose up microservices-runtime
docker-compose push microservices-runtime