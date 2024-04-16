FROM alpine

RUN apk update && apk upgrade 
RUN wget https://betcommon.blob.core.windows.net/docker/crictl.tar.gz && tar zxvf crictl.tar.gz -C /usr/local/bin
RUN rm -f crictl.tar.gz
RUN chmod +x /usr/local/bin/crictl

ADD cleanup /etc/periodic/hourly
ADD crictl.yaml /etc/crictl.yaml

CMD [ "/bin/sh", "-c", "crond -f"]
