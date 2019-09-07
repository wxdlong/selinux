FROM centos:7

RUN yum clean all; \
    rpm --rebuilddb; \
    yum install -y curl selinux-policy policycoreutils-python selinux-policy-targeted  libselinux  libselinux-utils audit


CMD ["/sbin/init"]
