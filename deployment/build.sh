#!/bin/bash

echo build

if [ $# -ne 1 ]; then
  echo "incorrect number of parameters
  usage: $0 [branch] 
  example: $0 release" 
    exit 1
fi

image="one2onetool"
branch=$1

if [ "$branch" == "release" ];then	
  #DATA_FILE="Questions.json"
  echo "release branch. No change to Questions.json"
elif [ "$branch" == "staging" ];then
  #DATA_FILE="Questions-test.json"
  echo "stating branch. Replace Questions.json with Questions-tst.json"
  #cp data/Questions-test.json data/Questions.json
fi

#Start build
#cd ..
#docker build -t $image:latest .

