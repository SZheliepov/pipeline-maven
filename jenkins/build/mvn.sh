#!/bin/bash



echo "*************************"
echo "** Building jar ********"
echo "*************************"

WORKSPACE=/home/centos/jenkins/jenkins-data/jenkins_home/workspace/pipeline-maven-docker

docker run   --rm  -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2  -w /app maven:3-alpine "$@"
