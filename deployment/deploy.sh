#!/bin/sh

echo deploy
if [ $# -ne 1 ]; then
  echo "incorrect number of parameters
  usage: $0 [tag]
  example: $0 1.4"
    exit 1
fi

aws_registry="us-west-2.amazonaws.com"
image="one2onetool"
tag=$1

aws ecr get-login --no-include-email --region us-west-2

docker tag $image:latest $aws_registry/$image:$tag
docker push $aws_registry/$image:$tag 
