FROM centos:8

ENV BUILDROOT="/root/rpmbuild"

RUN yum groupinstall -y "Development Tools" \
 && yum install -y -q epel-release \
 && yum install -y screen \
 && yum clean all

# fpm
RUN yum -y install ruby ruby-devel ruby-libs rubygems rpm-build \
 && yum clean all \
 && gem install fpm --no-rdoc --no-ri

WORKDIR $BUILDROOT

COPY nkf-2.1.5.tar.gz .
RUN tar xzf nkf-2.1.5.tar.gz
WORKDIR $BUILDROOT/nkf-2.1.5

RUN make -s
RUN make test
RUN make install
RUN fpm -s dir \
  -v $(date "+%Y%m%d")_2.1.5 \
  -t rpm \
  -n local-nkf \
  -p local-nkf-2.1.5.el8.x86_64.rpm \
  -C /usr/local \
  --prefix /usr/local \
  -a x86_64 \
  bin/nkf man/ja/man1/nkf.1 man/man1/nkf.1
