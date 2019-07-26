export DOCKER_REPO="macielbombonato"
export IMAGE_NAME="docker-builder"

export DOCKER_FILE="."

if [ -z "$1" ]; then
    export VERSION="latest"
else
    export VERSION=$1
fi

echo " ==> Image data "
echo " - Dockerfile: ${DOCKER_FILE}" 
echo " - REPOSITORY: ${DOCKER_REPO}" 
echo " - IMAGE:      ${IMAGE_NAME}" 
echo " - VERSION:    ${VERSION}" 

echo ' == Building image'
docker build --rm -t ${DOCKER_REPO}/${IMAGE_NAME}:${VERSION} -f Dockerfile ${DOCKER_FILE}
