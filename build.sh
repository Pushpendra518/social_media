docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID pushpendramenaria/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID pushpendramenaria/$JOB_NAME:latest

docker push pushpendramenaria/$JOB_NAME:$BUILD_ID

docker push pushpendramenaria/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID pushpendramenaria/$JOB_NAME:$BUILD_ID pushpendramenaria/$JOB_NAME:latest
