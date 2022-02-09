FROM ubuntu

RUN apt-get update && apt-get install cron -y && apt-get install wget -y
RUN wget https://github.com/kubernetes-sigs/cri-tools/releases/download/v1.23.0/crictl-v1.23.0-linux-amd64.tar.gz && tar zxvf crictl-v1.23.0-linux-amd64.tar.gz -C /usr/local/bin
RUN rm -f crictl-v1.23.0-linux-amd64.tar.gz

ADD cleanup /etc/cron.hourly

CMD [ "/bin/sh", "-c", "crond -f"]
