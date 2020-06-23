ARG PRODUCT_IMAGE 
ARG BASE_IMAGE

FROM $PRODUCT_IMAGE as product_image
COPY --chown=sagadmin ./scripts /src/scripts
#copy config.xml
COPY --chown=sagadmin ./data/config.xml /opt/softwareag/UniversalMessaging/tools/runner/config.xml 

RUN /src/scripts/uploadAssets.sh

#FROM $BASE_IMAGE as default
#RUN useradd -u 1724 sagadmin
#EXPOSE 9000
#COPY --from=product_image --chown=1724:1724 /opt/softwareag/ /opt/softwareag/
#COPY --from=product_image --chown=1724:1724 /opt/softwareag/UniversalMessaging/server/umserver/data/ /opt/softwareag/UniversalMessaging/server/umserver/data/
#COPY --chown=sagadmin ./scripts /src/scripts

ENTRYPOINT /src/scripts/Entrypoint.sh