ARG BUILD_FROM
FROM $BUILD_FROM

# Copy data for add-on
ENV PIP_ROOT_USER_ACTION=ignore
# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

COPY ./src /batcontrol

RUN apk add --no-cache \
            python3 \
            py3-numpy \
            py3-pandas\
            py3-yaml\
            py3-requests

CMD [ "/run.sh" ]
