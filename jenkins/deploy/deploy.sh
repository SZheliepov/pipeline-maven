#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth  username@ip:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish  username@ip:/tmp/publish
ssh -i /opt/prod username@ip "/tmp/publish"
