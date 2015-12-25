FROM        alpine:3.2
RUN         apk add --update ca-certificates openssl tar && \
            wget https://github.com/coreos/etcd/releases/download/v2.0.10/etcd-v2.0.10-linux-amd64.tar.gz && \
            tar xzvf etcd-v2.0.10-linux-amd64.tar.gz && \
            mv etcd-v2.0.10-linux-amd64/etcd* /bin/ && \
            apk del --purge tar openssl && \
            rm -Rf etcd-v2.0.10-linux-amd64* /var/cache/apk/*
VOLUME      /data
EXPOSE      2379 2380 4001 7001
ADD         run.sh /bin/run.sh
ENTRYPOINT  ["/bin/run.sh"]
