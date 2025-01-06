DOMAINOWNER="160945804984"
REGION="us-east-1"
USER="torrino07"

IMAGE="postgresql-server"
VERSION="latest"

docker build -t "$IMAGE" .

docker tag "$IMAGE":"$VERSION" "$USER"/"$IMAGE":"$VERSION"
docker push "$USER"/"$IMAGE":"$VERSION"