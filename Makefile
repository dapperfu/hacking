
debian-arm64:
	sudo qemu-debootstrap --arch=arm64 --keyring /usr/share/keyrings/debian-archive-keyring.gpg --variant=buildd --exclude=debfoster testing debian-arm64 http://apt-cacher-ng.local:3142/debian/

.PHONY: clean
clean:
	sudo git clean -xfd
