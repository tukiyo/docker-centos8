FROM tukiyo3/centos8-build

# daemontools
COPY djbdns/daemontools-0.76.tar.gz .
RUN tar xzf daemontools-0.76.tar.gz
WORKDIR /usr/local/src/admin/daemontools-0.76
RUN echo "gcc -O2 -include /usr/include/errno.h" > src/conf-cc \
 && ./package/compile \
 && mkdir -p /opt/djbtools \
 && cp -a /usr/local/src/admin/daemontools-0.76/command /opt/djbtools/bin

# ucspi-tcp
WORKDIR /usr/local/src
COPY djbdns/ucspi-tcp-0.88.tar.gz .
RUN tar xzf ucspi-tcp-0.88.tar.gz
WORKDIR /usr/local/src/ucspi-tcp-0.88
RUN echo "gcc -O2 -include /usr/include/errno.h" > conf-cc \
 && sed -i -e 's@/usr/local@/opt/djbtools@' conf-home \
 && make \
 && make setup check

# djbdns
WORKDIR /usr/local/src
COPY djbdns/djbdns-1.05.tar.gz .
RUN tar xzf djbdns-1.05.tar.gz
WORKDIR /usr/local/src/djbdns-1.05
RUN echo "gcc -O2 -include /usr/include/errno.h" > conf-cc \
 && sed -i -e 's@/usr/local@/opt/djbtools@' conf-home \
 && make -s \
 && make setup check

# rpm
RUN fpm -s dir \
  -v $(date "+%Y%m%d")_1.05 \
  -t rpm \
  -n opt-djbdns \
  -p opt-djbdns-1.05.el8.x86_64.rpm \
  -C /opt/djbtools/bin \
  --prefix /opt/djbtools/bin \
  -a x86_64 \
  .
