FROM gliderlabs/alpine:latest
RUN apk-install ca-certificates openssl
RUN wget https://github.com/coreos/etcd/releases/download/v2.0.10/etcd-v2.0.10-linux-amd64.tar.gz && \
    tar xzvf etcd-v2.0.10-linux-amd64.tar.gz && \
    mv etcd-v2.0.10-linux-amd64/etcd etcd-v2.0.10-linux-amd64/etcdctl /bin && \
    rm -rf etcd-v2.0.10-linux-amd64*
VOLUME /data
EXPOSE 2379 2380 4001 7001
ADD run.sh /bin/run.sh
ENTRYPOINT ["/bin/run.sh"]
