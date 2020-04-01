FROM store/softwareag/webmethods-microservicesruntime:10.5.0.0
#copy packages
COPY --chown=sagadmin ./data/packageassets/IS/Packages/ /opt/softwareag/IntegrationServer/packages/

#copy application.properties
COPY --chown=sagadmin ./data/application.properties /opt/softwareag/IntegrationServer/application.properties 

# copy needed data for configuring mysql database pool
COPY --chown=sagadmin ./data/mysql-connector-java-5.1.47.jar /opt/softwareag/common/lib/mysql-connector-java-5.1.47.jar
COPY --chown=sagadmin ./data/setenv.sh /opt/softwareag/IntegrationServer/bin/setenv.sh
COPY --chown=sagadmin ./data/jdbc /opt/softwareag/IntegrationServer/config/jdbc

# upload configuration assets
COPY --chown=sagadmin ./scripts /src/scripts
COPY --chown=sagadmin ./data/wm-deploy.jar /src/data/wm-deploy.jar
COPY --chown=sagadmin ./data/configassets /src/data/configassets
RUN /src/scripts/uploadAssets.sh