FROM tukiyo3/centos8-build as el8nsl

WORKDIR /usr/local/src/
ENV CXXFLAGS="-std=gnu++98"

RUN yum install --nogpgcheck -y libnsl

# RUN yum install --nogpgcheck -y dnf-utils
# RUN yumdownloader --source glibc
COPY glibc/glibc-2.28-42.el8.1.src.rpm .
RUN rpm -ivh glibc*.src.rpm

RUN yum install --nogpgcheck -y --enablerepo=PowerTools glibc-static libstdc++-static texinfo
RUN yum install --nogpgcheck -y audit-libs-devel gd-devel libcap-devel python3 python3-devel
RUN yum install --nogpgcheck -y audit-libs-devel gd-devel libcap-devel python3 python3-devel

WORKDIR /root/rpmbuild/SPECS/

RUN sed -i.bak -e 's/--prefix=%{_prefix}/--prefix=%{_prefix} --enable-obsolete-nsl/' glibc.spec
RUN rpmbuild -bb glibc.spec
