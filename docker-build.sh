docker system prune -af && \

DOCKER_BUILDKIT=1 \
docker build -t bazel:latest  \
--cache-from artifactory_path \
--build-arg BUILDKIT_INLINE_CACHE=1 \
-f Dockerfile \
. && \

docker push bazel:latest
