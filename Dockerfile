FROM alpine

RUN wget https://betcommon.blob.core.windows.net/docker/crictl.tar.gz && tar zxvf crictl.tar.gz -C /usr/local/bin
RUN rm -f crictl.tar.gz

ADD cleanup /etc/periodic/hourly

CMD [ "/bin/sh", "-c", "crond -f"]

