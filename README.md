# one2onetool

## 1) Overview
Use Jenkins Pipeline via Jenkinsfile to perform one click deployment. Jenkins job does test, build, and deploy docker image to AWS.
Use of precommit hook in .git for unit testing before each commit. 

## 2) Lifecycle
### 2.1) Commit change
Pre-commit hook ensures a first layer of unit test is done. Commit will be denied if non-zero exit code is returned. 
![image](https://user-images.githubusercontent.com/81013119/111900654-c5881e80-8a6e-11eb-876b-35820994bd6b.png)
***

### 2.2) Trigger Jenkins job(pipeline based on Jenkinsfile
2 parameters required-branch and tag. Branch determines which repo branch is used to build. Tag helps with versioning of docker image
![image](https://user-images.githubusercontent.com/81013119/111900695-f5cfbd00-8a6e-11eb-97fd-50a490cb9e36.png)
***

#### 2.2.1) git-checkout
Corresponding branch is check out based on branch parameter passed in.

#### 2.2.2) test
2nd layer of testing is done(Should be more thorough than unit testing)

#### 2.2.3) build 
Branch parameter is passed into build job. Determines which DATA_FILE to be used. Rather than determining from DATA_FILE env variable or branch, there should only be one souce of truth(Using branch as source of truth in this case)

#### 2.2.4) deploy
Tag parameter is passed into deploy job. Will help with versioning when pushing to AWS/DockerHub Repo.
***

## 3) Overall status of pipeline should be viewable from Jenkins

![image](https://user-images.githubusercontent.com/81013119/111900556-3c70e780-8a6e-11eb-88e0-d1c6b32032fb.png)

