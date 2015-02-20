##Itty bitty Etcd v2.0.3 container

This image weighs in at 46.17 MB due to the inclusion of TLS support and etcdctl.  The `-data-dir` is a volume mounted to `/data`, and the default ports are bound to Etcd and exposed.

```sh
docker run \
  -d \
  -p 2379:2379 \
  -p 2380:2380 \
  -p 4001:4001 \
  -p 7001:7001 \
  -v /data/backup/dir:/data \
  --name some-etcd \
  elcolio/etcd:latest \
  -name some-etcd \
  -discovery=https://discovery.etcd.io/blahblahblahblah
```
