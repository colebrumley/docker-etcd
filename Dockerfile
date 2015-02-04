FROM scratch
ADD etcd /bin/etcd
VOLUME ["/data"]
EXPOSE 4001 7001
ENTRYPOINT ["/bin/etcd", "-data-dir=/data", "--listen-peer-urls=http://0.0.0.0:7001", "--listen-client-urls=http://0.0.0.0:4001"]
