#!/bin/bash

echo build

if [ $# -ne 2 ]; then
  echo "incorrect number of parameters
  usage: $0 [branch] [tag]
  example: $0 release 1.4"
    exit 1
fi

branch=$1
tag=$2

if [ "$branch" == "release" ];then	
  #DATA_FILE="Questions.json"
  echo "release branch. No change to Questions.json"
elif [ "$branch" == "staging" ];then
  #DATA_FILE="Questions-test.json"
  echo "stating branch. Replace Questions.json with Questions-tst.json"
  #cp data/Questions-test.json data/Questions.json
fi

#Start build
cd ..
docker build -t one2onetool:$tag .

