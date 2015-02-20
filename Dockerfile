FROM centos
ADD https://github.com/coreos/etcd/releases/download/v2.0.3/etcd-v2.0.3-linux-amd64.tar.gz /etcd.tar
RUN yum -y install tar
RUN tar xvf /etcd.tar
RUN mv /etcd-v2.0.3-linux-amd64/etcd /usr/bin && mv /etcd-v2.0.3-linux-amd64/etcdctl /usr/bin
RUN rm -Rf /etcd*
VOLUME ["/data"]
EXPOSE 4001 7001
ENTRYPOINT ["/usr/bin/etcd", "-data-dir=/data", "--listen-peer-urls=http://0.0.0.0:7001", "--listen-client-urls=http://0.0.0.0:4001"]
