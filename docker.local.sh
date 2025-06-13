IMAGE="postgresql-server"
VERSION="latest"

docker build -t "$IMAGE" .

docker tag "$IMAGE":"$VERSION" "$USER"/"$IMAGE":"$VERSION"
docker push "$USER"/"$IMAGE":"$VERSION"