FROM tukiyo3/centos8-build

WORKDIR /opt
COPY eow/eow.tar.gz .
RUN tar xzf eow.tar.gz
RUN ln -s /opt/eow/eow /usr/local/bin/eow

# rpm
RUN fpm -s dir \
  -v $(date "+%Y%m%d") \
  -t rpm \
  -n opt-eow \
  -p opt-eow.noarch.rpm \
  -C / \
  --prefix / \
  -a x86_64 \
  /opt/eow/ /usr/local/bin/eow

# deb
RUN fpm -s dir \
  --deb-no-default-config-files \
  -v $(date "+%Y%m%d") \
  -t deb \
  -n opt-eow \
  -p opt-eow.noarch.deb \
  -C / \
  --prefix / \
  -a x86_64 \
  /opt/eow/ /usr/local/bin/eow
