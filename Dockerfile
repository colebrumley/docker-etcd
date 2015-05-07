FROM gliderlabs/alpine:latest
RUN apk-install ca-certificates polarssl
ADD https://github.com/coreos/etcd/releases/download/v2.0.8/etcd-v2.0.8-linux-amd64.tar.gz etcd-v2.0.8-linux-amd64.tar.gz
RUN tar xzvf etcd-v2.0.8-linux-amd64.tar.gz
RUN mv etcd-v2.0.8-linux-amd64/etcd /bin && mv etcd-v2.0.8-linux-amd64/etcdctl /bin && rm -Rf etcd-v2.0.8-linux-amd64*
VOLUME /data
EXPOSE 2379 2380 4001 7001
ADD run.sh /bin/run.sh
ENTRYPOINT ["/bin/run.sh"]
