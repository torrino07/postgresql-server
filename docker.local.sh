DOMAINOWNER="160945804984"
REGION="us-east-1"
USER="torrino07"

export IMAGE="postgressql-server"
export VERSION="latest"

docker build -t "$IMAGE" .

docker tag "$IMAGE":"$VERSION" "$USER"/"$IMAGE":"$VERSION"
docker push "$USER"/"$IMAGE":"$VERSION"
docker run -p 5432:5432 torrino07/postgressql-server:latest

## AWS
# aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin "$DOMAINOWNER".dkr.ecr."$REGION".amazonaws.com
# docker tag "$IMAGE":"$VERSION" "$DOMAINOWNER".dkr.ecr."$REGION".amazonaws.com/"$IMAGE":"$VERSION"
# docker push "$DOMAINOWNER".dkr.ecr."$REGION".amazonaws.com/"$IMAGE":"$VERSION"