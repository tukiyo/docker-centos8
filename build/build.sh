export BUILD="docker build . --no-cache=false -f "

$BUILD Dockerfile -t tukiyo/centos8-build
