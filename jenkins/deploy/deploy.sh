#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth  admin@3.88.18.16:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish  admin@3.88.18.16:/tmp/publish
ssh -i /opt/prod admin@3.88.18.16 "/tmp/publish"
