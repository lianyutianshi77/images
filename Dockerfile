FROM selfimgs/centos-min:v6.10
MAINTAINER L <linmin_7@163.com>
RUN curl -o  /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-6.repo && \
    rpm --rebuilddb && yum -y update && yum clean all
RUN rpm --rebuilddb && yum -y install python-pip && pip install shadowsocks
RUN curl -o /opt/entrypoint.sh https://raw.githubusercontent.com/lianyutianshi77/shadowsock-server-v3.0.0/master/entrypoint.sh && \
    chmod 0755 /opt/entrypoint.sh && \
    curl -o /etc/shadowsocks.json https://raw.githubusercontent.com/lianyutianshi77/shadowsock-server-v3.0.0/master/shadowsocks.json

EXPOSE 8388
CMD /opt/entrypoint.sh /etc/shadowsocks.json
