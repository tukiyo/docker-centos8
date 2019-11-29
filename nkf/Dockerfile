FROM tukiyo3/centos8-build

COPY nkf/nkf-2.1.5.tar.gz .
RUN tar xzf nkf-2.1.5.tar.gz
WORKDIR /usr/local/src/nkf-2.1.5

RUN make -s
RUN make test
RUN make install
# manの文字化け対応
RUN nkf --overwrite -w /usr/local/man/ja/man1/nkf.1
RUN fpm -s dir \
  -v $(date "+%Y%m%d")_2.1.5 \
  -t rpm \
  -n nkf \
  -p nkf-2.1.5.el8.x86_64.rpm \
  -C /usr/local \
  --prefix / \
  -a x86_64 \
  bin/nkf man/ja/man1/nkf.1 man/man1/nkf.1
