FROM tukiyo3/centos8-build

RUN yum install -y --nogpgcheck dnf-utils
RUN yumdownloader --source gc
RUN yumdownloader --source libatomic_ops
RUN rpm -ivh *.src.rpm
RUN rpmbuild -bb /root/rpmbuild/SPECS/libatomic_ops.spec
RUN rpm -ivh /root/rpmbuild/RPMS/x86_64/libatomic_ops-devel-7.6.2-3.el8.x86_64.rpm
RUN rpmbuild -bb /root/rpmbuild/SPECS/gc.spec
RUN rpm -ivh /root/rpmbuild/RPMS/x86_64/gc-devel-7.6.4-3.el8.x86_64.rpm

RUN git clone https://github.com/shinh/w3m
WORKDIR /usr/local/src/w3m
RUN ./configure --prefix=/opt/w3m
RUN make -s
RUN make install

RUN fpm -s dir \
  -v $(date "+%Y%m%d")_0.5.3.git \
  -t rpm \
  -d "gc" \
  -n local-w3m \
  -p local-w3m-0.5.3.el8.x86_64.rpm \
  -C /opt/w3m \
  --prefix /usr/local \
  -a x86_64 \
  .
