FROM elasticsearch:1.7
MAINTAINER Nayeem Syed <developerinlondon@gmail.com>
WORKDIR /usr/share/elasticsearch
RUN bin/plugin -i elasticsearch/elasticsearch-cloud-aws/2.7.1
RUN bin/plugin -i srv-discovery --url https://github.com/github/elasticsearch-srv-discovery/releases/download/1.5.1/elasticsearch-
RUN bin/plugin -i mobz/elasticsearch-head
srv-discovery-1.5.1.zip
COPY docker-entrypoint.sh /docker-entrypoint.sh
