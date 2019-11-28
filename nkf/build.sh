export BUILD="docker build . --no-cache=false -f "

$BUILD Dockerfile -t tukiyo/mysql4php52:local-nkf
