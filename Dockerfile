FROM docker

ADD cleanup /etc/periodic/hourly

CMD [ "crond -f"]
