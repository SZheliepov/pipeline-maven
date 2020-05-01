#!/bin/bash


echo "*******************"
echo "** Pushing image***"
echo "*******************"


IMAGE="maven-project"


echo "** Loging in ******"

docker login -u szhelepov -p $PASS

echo "*** Tagging inage**"

docker tag $IMAGE:$BUILD_TAG szhelepov/$IMAGE:$BUILD_TAG

echo "*** Pushing image ****"

docker push szhelepov/$IMAGE:$BUILD_TAG
