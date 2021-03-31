FROM docker

ADD cleanup /etc/periodic/hourly

CMD [ "/bin/sh", "-c", "crond;tail -f /dev/null"]