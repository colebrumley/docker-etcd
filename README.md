# Tiny Etcd v2.0 Container
This container is essentially a rebuild of microbox/etcd, updating to the new stable etcd release.  The only difference between this and Microbox's implementation is that this container listens on 0.0.0.0 by default.  Then you can map to a host IP if needed or use something like Flanneld and not have to map anythingto the host.
