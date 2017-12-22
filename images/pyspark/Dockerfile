FROM openjdk:8-jre-alpine
MAINTAINER Thiago Oliveira <pintowar@gmail.com>

RUN apk add --update python py-pip gcc gfortran musl-dev python2-dev zeromq-dev bash
RUN pip install elasticsearch numpy jupyter tmdbsimple

WORKDIR /usr/share

RUN wget http://ftp.unicamp.br/pub/apache/spark/spark-2.2.1/spark-2.2.1-bin-hadoop2.7.tgz && tar xzfv spark-2.2.1-bin-hadoop2.7.tgz && rm spark-2.2.1-bin-hadoop2.7.tgz
RUN wget http://download.elastic.co/hadoop/elasticsearch-hadoop-5.4.0.zip && unzip elasticsearch-hadoop-5.4.0.zip && rm elasticsearch-hadoop-5.4.0.zip

RUN mkdir notebooks
WORKDIR /usr/share/notebooks

EXPOSE 8888

ENV PYSPARK_DRIVER_PYTHON="jupyter"
ENV PYSPARK_DRIVER_PYTHON_OPTS="notebook --ip='*' --port=8888 --no-browser --allow-root" 

ENTRYPOINT ["/bin/bash", "-c", "/usr/share/spark-2.2.1-bin-hadoop2.7/bin/pyspark --driver-memory 4g --driver-class-path /usr/share/elasticsearch-hadoop-5.4.0/dist/elasticsearch-spark-20_2.11-5.4.0.jar"]
