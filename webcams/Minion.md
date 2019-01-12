Via Bluetooth/Serial.

mount -o rw,port=2049,nolock,proto=tcp,exec -t nfs 10.0.2.246:/vault/projects/zsgx1hacks/debian2 /mnt/mmc/
mount -o rw,port=2049,nolock,proto=tcp,exec -t nfs 10.0.2.213:/projects/zsgx1hacks/debian ${ROOT}



ROOT=/projects/debian_armel_testing
rm -rf ${ROOT}
mkdir -p ${ROOT}
qemu-debootstrap --foreign --arch=armel testing ${ROOT} http://10.0.0.20:3142/debian



# 
