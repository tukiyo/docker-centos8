FROM tukiyo3/centos8-build

RUN git clone https://github.com/jonas/tig
WORKDIR /usr/local/src/tig
RUN make -s
RUN make install DESTDIR=/opt/tig

RUN fpm -s dir \
  -v $(date "+%Y%m%d")_2.5.0.tig \
  -t rpm \
  -n local-tig \
  -p local-tig-2.5.0.el8.x86_64.rpm \
  -C /opt/tig \
  --prefix /usr/local/root \
  -a x86_64 \
  .
