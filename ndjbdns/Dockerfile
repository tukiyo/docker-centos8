FROM tukiyo3/centos8-build

COPY ndjbdns/ndjbdns-1.06-1.fc20.src.rpm .
RUN rpm -ivh ndjbdns-1.06-1.fc20.src.rpm \
 && rpmbuild -bb /root/rpmbuild/SPECS/ndjbdns.spec
WORKDIR /root/rpmbuild/RPMS/x86_64
