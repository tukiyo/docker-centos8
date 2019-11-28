IMAGE="tukiyo/mysql4php52:local-nkf"
IMAGE="centos:8"

docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
