FROM grafana/grafana:7.1.5-ubuntu

USER root

RUN apt-get update && apt-get install tzdata

COPY mocked.db /mocked.db
COPY start.sh /start.sh

RUN ["chmod", "+x", "/start.sh"]

ENTRYPOINT ["/start.sh"]
