
docker pull docker.elastic.co/elasticsearch/elasticsearch:8.10.2


docker run \
  --name elasticsearch_container \
  --publish 9200:9200 \
  --publish 9300:9300 \
  --env "discovery.type=single-node" \
  docker.elastic.co/elasticsearch/elasticsearch:8.10.2




