#!/bin/bash

docker build -t nlp_for_disaster_tweets -f config/nlp_for_disaster_tweets.Dockerfile .
docker run -ti -v ${PWD}:/usr/local/bin/nlp_for_disaster_tweets -p 8888:8888 nlp_for_disaster_tweets
