DOMAINOWNER="160945804984"
REGION="us-east-1"
USER="torrino07"

POSTGRES_DB="trading"
POSTGRES_HOST_AUTH_METHOD="trust"
IMAGE="postgresql_server"
VERSION="latest"

docker build \
    --build-arg POSTGRES_DB="$POSTGRES_DB" \
    --build-arg POSTGRES_HOST_AUTH_METHOD="$POSTGRES_HOST_AUTH_METHOD" \
    -t "$IMAGE" .

docker tag "$IMAGE":"$VERSION" "$USER"/"$IMAGE":"$VERSION"
docker push "$USER"/"$IMAGE":"$VERSION"