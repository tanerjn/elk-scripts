docker pull docker.elastic.co/logstash/logstash:8.10.2

docker run --rm -it -v ~/pipeline/:/usr/share/logstash/pipeline/ docker.elastic.co/logstash/logstash:8.10.2

