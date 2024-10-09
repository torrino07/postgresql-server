USER="torrino07"

export IMAGE="postgressql-server"
export VERSION="latest"


docker build -t "$IMAGE" .

docker tag "$IMAGE":"$VERSION" "$USER"/"$IMAGE":"$VERSION"
docker push "$USER"/"$IMAGE":"$VERSION"

docker run -p 5432:5432 torrino07/postgressql-server:latest