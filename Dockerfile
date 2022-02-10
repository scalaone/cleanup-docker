FROM alpine

ENV VERSION="v1.23.0"
RUN wget https://github.com/kubernetes-sigs/cri-tools/releases/download/$VERSION/crictl-$VERSION-linux-amd64.tar.gz && tar zxvf crictl-$VERSION-linux-amd64.tar.gz -C /usr/local/bin
RUN rm -f crictl-$VERSION-linux-amd64.tar.gz

ADD cleanup /etc/periodic/hourly

CMD [ "/bin/sh", "-c", "crond -f"]
