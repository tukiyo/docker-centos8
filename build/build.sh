export BUILD="docker build . --no-cache=false -f "

$BUILD Dockerfile -t tukiyo3/centos8-build
