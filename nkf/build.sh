export BUILD="docker build . --no-cache=false -f "

$BUILD nkf/Dockerfile -t tukiyo3/centos8-build:local-nkf
