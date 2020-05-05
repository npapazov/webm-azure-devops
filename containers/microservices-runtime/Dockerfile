ARG PRODUCT_IMAGE
ARG BASE_IMAGE

FROM $PRODUCT_IMAGE as product_image
#copy packages
COPY --chown=sagadmin ./data/AssetPackages/Packages/ /opt/softwareag/IntegrationServer/Packages/

#copy application.properties
COPY --chown=sagadmin ./data/application.properties /opt/softwareag/IntegrationServer/application.properties 

# copy needed data for configuring mysql database pool
COPY --chown=sagadmin ./data/mysql-connector-java-5.1.47.jar /opt/softwareag/IntegrationServer/lib/jars/mysql-connector-java-5.1.47.jar

# upload configuration assets
COPY --chown=sagadmin ./scripts /src/scripts
COPY --chown=sagadmin ./data/wm-deploy.jar /src/data/wm-deploy.jar
COPY --chown=sagadmin ./data/AssetConfigurations /src/data/AssetConfigurations
RUN /src/scripts/uploadAssets.sh

FROM $BASE_IMAGE as default
COPY --from=product_image --chown=1724:1724 /opt/softwareag/ /opt/softwareag/