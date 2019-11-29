export BUILD="docker build . --no-cache=false -f "

# $BUILD build/Dockerfile -t tukiyo3/centos8-build
$BUILD nkf/Dockerfile -t tukiyo3/centos8-build:local-nkf
$BUILD w3m/Dockerfile -t tukiyo3/centos8-build:local-w3m
