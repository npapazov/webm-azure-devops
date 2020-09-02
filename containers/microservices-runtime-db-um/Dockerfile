ARG PRODUCT_IMAGE
ARG BASE_IMAGE

FROM $PRODUCT_IMAGE as product_image
#copy packages
COPY --chown=sagadmin ./data/Packages /opt/softwareag/IntegrationServer/packages/
RUN ls -latr /opt/softwareag/IntegrationServer/packages/

# copy libraries jars 
COPY --chown=sagadmin ./data/Libraries /opt/softwareag/IntegrationServer/lib/jars/
RUN ls -latr /opt/softwareag/IntegrationServer/lib/jars/

COPY --chown=sagadmin ./data/Configurations /opt/softwareag/IntegrationServer/config/
RUN ls -latr /opt/softwareag/IntegrationServer/config/

#copy application.properties
COPY --chown=sagadmin ./data/application.properties /opt/softwareag/IntegrationServer/application.properties 
RUN ls -latr /opt/softwareag/IntegrationServer/

# upload configuration assets
#COPY --chown=sagadmin ./scripts /src/scripts
#COPY --chown=sagadmin ./data/wm-deploy.jar /src/data/wm-deploy.jar
#COPY --chown=sagadmin ./data/AssetConfigurations /src/data/AssetConfigurations
#RUN /src/scripts/uploadAssets.sh

RUN rm -f /opt/softwareag/IntegrationServer/logs/*

FROM $BASE_IMAGE as default
RUN useradd -u 1724 sagadmin
EXPOSE 5555
COPY --from=product_image --chown=1724:1724 /opt/softwareag/ /opt/softwareag/
COPY --chown=sagadmin ./scripts /src/scripts
ENV JAVA_HOME=/opt/softwareag/jvm/jvm
ENV PATH=$JAVA_HOME/bin:$PATH


ENTRYPOINT /src/scripts/Entrypoint.sh
