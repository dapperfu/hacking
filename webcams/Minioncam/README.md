

export ROOT=/mnt/debian
mkdir -p ${ROOT}
mount -o rw,port=2049,nolock,proto=tcp,exec -t nfs 10.0.2.213:/projects/debian_armel_testing ${ROOT}
for f in dev dev/pts proc sys ; do mount -o bind /$f $ROOT/$f ; done

chroot ${ROOT} /bin/bash
