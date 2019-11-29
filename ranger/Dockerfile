FROM tukiyo3/centos8-build

RUN git clone https://github.com/ranger/ranger
WORKDIR /usr/local/src/ranger
RUN yum install --nogpgcheck -y python3
RUN pip3 install pylint
RUN pip3 install pytest
RUN (make -s;  make install DESTDIR=/opt/ranger)

RUN fpm -s dir \
  -v $(date "+%Y%m%d")_1.9.2.ranger \
  -t rpm \
  -d "file python3 python3-chardet sudo highlight bsdtar p7zip jq" \
  -n local-ranger \
  -p local-ranger-1.9.2.el8.x86_64.rpm \
  -C /opt/ranger \
  --prefix /usr/local \
  -a x86_64 \
  .
