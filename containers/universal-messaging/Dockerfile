ARG PRODUCT_IMAGE 
ARG BASE_IMAGE

FROM $PRODUCT_IMAGE as product_image

FROM $BASE_IMAGE as default

COPY --from=product_image --chown=1724:1724 $SAG_HOME/ $SAG_HOME/