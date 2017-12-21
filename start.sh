#!/bin/bash

docker run -p 8888:8888 -v $PWD/nbs:/usr/share/notebooks pyspark:latest
