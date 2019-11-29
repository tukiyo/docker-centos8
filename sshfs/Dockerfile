FROM tukiyo3/centos8-build

RUN yum install --nogpgcheck -y \
  python3 fuse3 fuse3-devel glib2-devel
RUN pip3 install meson
RUN pip3 install ninja

COPY sshfs/sshfs-3.6.0.tar.gz .
RUN tar xzf sshfs-3.6.0.tar.gz
WORKDIR /usr/local/src/sshfs-sshfs-3.6.0/build
RUN meson .. --prefix=/opt/sshfs
RUN ninja
RUN ninja install

RUN fpm -s dir \
  -v $(date "+%Y%m%d")_3.6.0 \
  -t rpm \
  -d fuse3-libs \
  -n local-sshfs \
  -p local-sshfs-3.6.0.el8.x86_64.rpm \
  -C /opt/sshfs \
  --prefix /usr/local \
  -a x86_64 \
  .
