#!/usr/bin/env bash

# CREATE SOFLINK FOR HOOK. IF NOT DONE YET, UNCOMMENT BELOW AND RUN ONCE
#GIT_DIR=$(git rev-parse --git-dir)
#echo "Installing hooks..."
# this command creates symlink to our pre-commit script
#ln -s ../../unittest/pre_commit.sh $GIT_DIR/hooks/pre-commit
#echo "Done"!


echo "Running pre-commit hook"
dir=$(pwd)
node $dir/test/test.js


# $? stores exit value of the last command
if [ $? -ne 0 ]; then
 echo "Tests must pass before commit!"
 exit 1
fi
