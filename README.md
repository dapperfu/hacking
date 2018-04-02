# hacking_VerneeActive

- [X] ADB access.
- [X] Cross compile.
- [ ] Exec cross compiled binaries.
- [X] Fastboot
- [X] Bootloader
- [ ] Root

## TWRP

1. Developer Options -> Allow Bootloader Unlock
1. ```adb reboot-bootloader```
1. ```fastboot oem unlock```
1. ```fastboot flash recovery recovery.img```
1. ```fastboot continue```
1. ```

The [Vernee Active](http://archive.is/seo8B) is a cheap "rugged" phone being sold on Aliexpress.



	$ cat /proc/cpuinfo                                                 
	processor	: 0
	Processor	: AArch64 Processor rev 4 (aarch64)
	model name	: AArch64 Processor rev 4 (aarch64)
	BogoMIPS	: 26.00
	Features	: fp asimd evtstrm aes pmull sha1 sha2 crc32
	CPU implementer	: 0x41
	CPU architecture: 8
	CPU variant	: 0x0
	CPU part	: 0xd03
	CPU revision	: 4

	processor	: 4
	Processor	: AArch64 Processor rev 4 (aarch64)
	model name	: AArch64 Processor rev 4 (aarch64)
	BogoMIPS	: 26.00
	Features	: fp asimd evtstrm aes pmull sha1 sha2 crc32
	CPU implementer	: 0x41
	CPU architecture: 8
	CPU variant	: 0x0
	CPU part	: 0xd03
	CPU revision	: 4

	processor	: 5
	Processor	: AArch64 Processor rev 4 (aarch64)
	model name	: AArch64 Processor rev 4 (aarch64)
	BogoMIPS	: 26.00
	Features	: fp asimd evtstrm aes pmull sha1 sha2 crc32
	CPU implementer	: 0x41
	CPU architecture: 8
	CPU variant	: 0x0
	CPU part	: 0xd03
	CPU revision	: 4

	processor	: 6
	Processor	: AArch64 Processor rev 4 (aarch64)
	model name	: AArch64 Processor rev 4 (aarch64)
	BogoMIPS	: 26.00
	Features	: fp asimd evtstrm aes pmull sha1 sha2 crc32
	CPU implementer	: 0x41
	CPU architecture: 8
	CPU variant	: 0x0
	CPU part	: 0xd03
	CPU revision	: 4

	processor	: 7
	Processor	: AArch64 Processor rev 4 (aarch64)
	model name	: AArch64 Processor rev 4 (aarch64)
	BogoMIPS	: 26.00
	Features	: fp asimd evtstrm aes pmull sha1 sha2 crc32
	CPU implementer	: 0x41
	CPU architecture: 8
	CPU variant	: 0x0
	CPU part	: 0xd03
	CPU revision	: 4

	Hardware	: MT6757CD
