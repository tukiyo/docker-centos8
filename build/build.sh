export BUILD="docker build . --no-cache=false -f "

$BUILD build/Dockerfile -t tukiyo3/centos8-build
