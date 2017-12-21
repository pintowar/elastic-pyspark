FROM elasticsearch:5.4.0-alpine

WORKDIR /usr/share/elasticsearch
RUN ./bin/elasticsearch-plugin install https://github.com/MLnick/elasticsearch-vector-scoring/releases/download/v5.4.0/elasticsearch-vector-scoring-5.4.0.zip

EXPOSE 9200 9300
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
