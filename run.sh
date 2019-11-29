IMAGE="centos:8"
IMAGE="tukiyo3/centos8-build"

IMAGE="tukiyo3/centos8-build:local-nkf"
IMAGE="tukiyo3/centos8-build:local-w3m"
IMAGE="tukiyo3/centos8-build:local-tig"

docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
