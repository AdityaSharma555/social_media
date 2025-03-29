docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID mycodejorunal/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID mycodejorunal/$JOB_NAME:latest

docker push mycodejorunal/$JOB_NAME:$BUILD_ID

docker push mycodejorunal/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID mycodejorunal/$JOB_NAME:$BUILD_ID mycodejorunal/$JOB_NAME:latest
