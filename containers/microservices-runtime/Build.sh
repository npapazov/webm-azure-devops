#!/bin/sh
#
docker build -t pcmsr:v1 -f Dockerfile .
docker run -d -p 6555:5555 --network sag-db-mysql_default --env MSR_JDBC_URL='jdbc:mysql://sag-db-mysql_mysql_1:3306/webm' --env MSR_JDBC_PASSWORD=webm --env MSR_JDBC_USER=webm --env MSR_JNDI_PROVIDER='nsp://localhost:9000' --env APPENDCLASSES=/opt/softwareag/common/lib/mysql-connector-java-5.1.47.jar pcmsr:v1
docker tag msrdb:latest dtr.ninjacloud.eur.ad.sag/ccdevops/msrdb:latest
docker push dtr.ninjacloud.eur.ad.sag/ccdevops/msrdb:latest