docker pull docker.elastic.co/kibana/kibana:8.10.2


docker run \
  --name kibana \
  --publish 5601:5601 \
  --link elasticsearch_container:elasticsearch_alias \
  --env "ELASTICSEARCH_URL=http://elasticsearch_alias:9200" \
  docker.elastic.co/kibana/kibana:8.10.2
