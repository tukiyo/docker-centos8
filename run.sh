IMAGE="centos:8"
IMAGE="tukiyo3/centos8-build"

IMAGE="tukiyo3/centos8-build:local-nkf"
IMAGE="tukiyo3/centos8-build:local-w3m"
IMAGE="tukiyo3/centos8-build:local-tig"
IMAGE="tukiyo3/centos8-build:local-ranger"
IMAGE="tukiyo3/centos8-build:local-autossh"
IMAGE="tukiyo3/centos8-build:local-sshfs"
IMAGE="tukiyo3/centos8-build:opt-eow"

docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
