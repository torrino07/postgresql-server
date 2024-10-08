USER="torrino07"
SA_PASSWORD="G3nLaB2024!"

export IMAGE="mssql-server"
export VERSION="latest"

docker build \
    --build-arg SA_PASSWORD="$SA_PASSWORD" \
    --build-arg POETRY_HTTP_BASIC_ARTIFACTS_PASSWORD="$POETRY_HTTP_BASIC_ARTIFACTS_PASSWORD" \
    -t "$IMAGE" .

docker tag "$IMAGE":"$VERSION" "$USER"/"$IMAGE":"$VERSION"
docker push "$USER"/"$IMAGE":"$VERSION"