ARG PRODUCT_IMAGE
ARG BASE_IMAGE

FROM $PRODUCT_IMAGE as product_image
FROM $BASE_IMAGE
RUN useradd -u 1724 sagadmin
COPY --from=product_image --chown=1724:1724 /opt/softwareag/ /opt/softwareag/
COPY --chown=sagadmin ./scripts /src/scripts
#copy config.xml
COPY --chown=sagadmin ./data/config.xml /opt/softwareag/UniversalMessaging/tools/runner/config.xml

RUN /src/scripts/uploadAssets.sh && ls -la /opt/softwareag/UniversalMessaging/server/umserver/data

ENTRYPOINT /src/scripts/Entrypoint.sh
