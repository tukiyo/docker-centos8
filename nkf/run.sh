IMAGE="centos:8"
IMAGE="tukiyo3/centos8-build:local-nkf"

docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
