FROM tukiyo3/centos8-build

COPY autossh/autossh-1.4g.tgz .
RUN tar xzf autossh-1.4g.tgz
WORKDIR /usr/local/src/autossh-1.4g
RUN ./configure --prefix=/opt/autossh
RUN make -s
RUN make install

RUN fpm -s dir \
  -v $(date "+%Y%m%d")_1.4g.git \
  -t rpm \
  -n local-autossh \
  -p local-autossh-1.4g.el8.x86_64.rpm \
  -C /opt/autossh \
  --prefix /usr/local \
  -a x86_64 \
  .
