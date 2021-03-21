FROM docker

ADD cleanup /etc/periodic/hourly

CMD [ "tail", "-f", "/dev/null"]