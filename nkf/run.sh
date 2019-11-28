IMAGE="tukiyo3/centos8-build:local-nkf"
IMAGE="centos:8"

docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
