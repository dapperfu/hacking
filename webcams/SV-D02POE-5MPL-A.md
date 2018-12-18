# SV-D02POE-5MPL-A

- [SV3C IP POE Security Camera,5MP HD 2592x1944P Dome Camera Indoor/Outdoor Wired Surveillance Camera, Remote View IP66 Waterproof Camera H.265 Onvif IR Night Vision Motion Detection](https://www.amazon.com/Security-2592x1944P-Surveillance-Waterproof-Detection/dp/B07DXNDXZR).
- $59.99 Amazon Dec 2018.

Specifications:

- Resolution: HD 2592*1944
- Sensor type: 1/3" 5MP CMOS sensor
- Lens: 3.6mm 5MP HD Lens
- View Angle: 70-90degree
- Night Vision: 15pcs IR LED, 20M Night Vision Distance
- Frame Rate: Up to 15fps
- POE Standard: 802.3af, 48V
- Weatherproof: IP66 Level
- SD card Slot: No
- Audio: No
- Video Compression: H.265 main profile, AVI format, Support RTSP, Compatible with AVI Media Player
- Power: Can be powered by both DC 12V 1A and POE
- Operating Temperature: -30C ~50C
- 3rd Party support list: Blue Iris, iSpy, Synology,Security Spy,XProtect,VLC and so on

Pros:

- Works on Ubuntu 18.04 Firefox & Chromium out of the box!
- No janky Internet Explorer Plugins!
- DHCP enabled by default!
- Instructions for RTSP on the manufactures webpage.
- NFS support.
  - Sane NFS folder structuring:
    ```[MOUNTPOINT]/EF00000000[SERIAL]/[TYPE]/[DATE]```, where:
    - [MOUNTPOINT] is the NFS mountpoint specified on the.
    - [SERIAL] is the camera serial number
    - [TYPE] is scheduled/motion
    - [DATE] is the date in ```YYYYMMDD``` format
- 5MP & PoE for $60.

Cons:

- No SSH.
- No SD card slot.
- P2P enabled by default.
- GB28181 (Some [Chinese government mandated standard](https://www.cctvforum.com/topic/37101-question-about-gb28181/?do=findComment&comment=238385)?)
- Chinglish in some places (but much better than most other vendors).

RTSP URLs

- ```rtsp://username:password@x.x.x.x/stream0```
- ```rtsp://username:password@x.x.x.x/stream1```

Default Login:

    admin/123456

# Device Probing:

From web interface, Information > Version:

```
Kernel Version
Linux 3.18.30 #15 PREEMPT Fri Mar 30 15:27:46 CST 2018 armv7l
File System Version
MC400L-500W_V0_BU V2.3.14 build 2018-10-09 16:22:40
Web Version
2018-09-07 12:28:00
```

```nmap -O```:

    Starting Nmap 7.60 ( https://nmap.org ) at 2018-12-17 20:35 EST
    Nmap scan report for IPCAM-XXXXXX-MC400L-500W_V0.lan (172.16.16.208)
    Host is up (0.00029s latency).
    Not shown: 996 closed ports
    PORT     STATE SERVICE
    80/tcp   open  http
    554/tcp  open  rtsp
    8000/tcp open  http-alt
    8200/tcp open  trivnet1
    MAC Address: F0:00:00:XX:XX:XX (Unknown)
    No exact OS matches for host (If you know what OS is running on it, see https://nmap.org/submit/ ).
    TCP/IP fingerprint:
    OS:SCAN(V=7.60%E=4%D=12/17%OT=80%CT=1%CU=30541%PV=Y%DS=1%DC=D%G=Y%M=F00000%
    OS:TM=5C184EE0%P=x86_64-pc-linux-gnu)SEQ(SP=106%GCD=1%ISR=108%TI=Z%CI=I%TS=
    OS:7)SEQ(SP=106%GCD=1%ISR=108%TI=Z%CI=RD%II=I%TS=7)OPS(O1=M5B4ST11NW1%O2=M5
    OS:B4ST11NW1%O3=M5B4NNT11NW1%O4=M5B4ST11NW1%O5=M5B4ST11NW1%O6=M5B4ST11)WIN(
    OS:W1=7120%W2=7120%W3=7120%W4=7120%W5=7120%W6=7120)ECN(R=Y%DF=Y%T=40%W=7210
    OS:%O=M5B4NNSNW1%CC=Y%Q=)T1(R=Y%DF=Y%T=40%S=O%A=S+%F=AS%RD=0%Q=)T2(R=N)T3(R
    OS:=N)T4(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)T5(R=Y%DF=Y%T=40%W=0%S=Z%
    OS:A=S+%F=AR%O=%RD=0%Q=)T6(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)T7(R=Y%
    OS:DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)U1(R=Y%DF=N%T=40%IPL=164%UN=0%RIP
    OS:L=G%RID=G%RIPCK=G%RUCK=G%RUD=G)IE(R=Y%DFI=N%T=40%CD=S)

    Network Distance: 1 hop

    OS detection performed. Please report any incorrect results at https://nmap.org/submit/ .
    Nmap done: 1 IP address (1 host up) scanned in 15.52 seconds


Host name lookups (via pi-hole logs):

```
$ export CAM_IP=
$ grep ${CAM_IP} /var/log/pihole.log | cut -f8 -d" " | sort | uniq
```

    d3ag4hukkh62yn.cloudfront.net
    dns-eu.ictun.com
    dns-hk.ictun.com
    dns.ictun.com
    dns-sz.ictun.com
    dns-us1.ictun.com
    hb.icamra.com
    www.amazon.com
    www.a.shifen.com
    www.baidu.com
    www.cdn.amazon.com
    www.icamra.cnm
    www.wshifen.com

Information probed by Amcrest NVR:

- Manufacturer: Onvif
- Device Name: MSTAR_IPNC
- Type: MC400L-500W

# Firmware Probing

- http://www.sv3c.com/POE-Camera-A-series-.html

Download & Extract:

```
$ mkdir /tmp/firmware && cd /tmp/firmware
$ curl -OL "http://www.sv3c.com/userfiles/files/Download%20File/Camera%20Firmware/A%20series%20Firmware/5MP/Firmware%20package%20for%205MP(MC400L).zip"
$ unzip *.zip
Archive:  Firmware%20package%20for%205MP(MC400L).zip
  inflating: firmware_clear data.bin
  inflating: firmware_MC400L-500W.bin
  inflating: firmware_MC400L_V0_GB_V2.3.14_H5_201807251927.bin
```

File Checksums:

```
$ md5sum *
45b771f6fdaa324264409b0013135fe8  Firmware%20package%20for%205MP(MC400L).zip
aa6c0602da4951ea376d713308fbf7be  firmware_clear data.bin
2aabe1bd831fa23fe9f9280e575c654c  firmware_MC400L-500W.bin
b394bef7ea5300cf1cd54e98f58a902b  firmware_MC400L_V0_GB_V2.3.14_H5_201807251927.bin
```

[Binwalk](https://github.com/ReFirmLabs/binwalk/) output:

```
$ binwalk *.bin

Scan Time:     2018-12-18 01:03:07
Target File:   /tmp/firmware/firmware_clear data.bin
MD5 Checksum:  aa6c0602da4951ea376d713308fbf7be
Signatures:    344

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
1556          0x614           7-zip archive data, version 0.3


Scan Time:     2018-12-18 01:03:07
Target File:   /tmp/firmware/firmware_MC400L-500W.bin
MD5 Checksum:  2aabe1bd831fa23fe9f9280e575c654c
Signatures:    344

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
1556          0x614           7-zip archive data, version 0.3


Scan Time:     2018-12-18 01:03:07
Target File:   /tmp/firmware/firmware_MC400L_V0_GB_V2.3.14_H5_201807251927.bin
MD5 Checksum:  b394bef7ea5300cf1cd54e98f58a902b
Signatures:    344

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
1556          0x614           uImage header, header size: 64 bytes, header CRC: 0xCD6B425F, created: 2018-03-30 07:49:42, image size: 1987292 bytes, Data Address: 0x20008000, Entry Point: 0x20008000, data CRC: 0xBC29A76A, OS: Linux, CPU: ARM, image type: Multi-File Image, compression type: lzma, image name: "MVX2##I3g31d1ef5KL_LX318####[BR:"
1632          0x660           xz compressed data
1913932       0x1D344C        xz compressed data
1988976       0x1E5970        Squashfs filesystem, little endian, version 4.0, compression:xz, size: 10213410 bytes, 915 inodes, blocksize: 131072 bytes, created: 2018-07-25 11:27:23
```

Extract Firmware:

```
$ binwalk --matryoshka --extract firmware_MC400L_V0_GB_V2.3.14_H5_201807251927.bin
```

## Firmware Tidbits:

Just some interesting things poking around:

```$ cat squashfs-root/etc/passwd_sys```:

    root:$1$yFuJ6yns$33Bk0I91Ji0QMujkR/DPi1:0:0:root:/root:/bin/sh
    bin:*:1:1:bin:/bin:
    daemon:*:2:2:daemon:/usr/sbin:
    sys:*:3:3:sys:/dev:
    adm:*:4:4:adm:/var/adm:
    lp:*:5:7:lp:/var/spool/lpd:
    sync:*:6:8:sync:/bin:/bin/sync
    shutdown:*:7:9:shutdown:/sbin:/sbin/shutdown
    halt:*:8:10:halt:/sbin:/sbin/halt
    mail:*:9:11:mail:/var/spool/mail:
    news:*:10:12:news:/var/spool/news:
    uucp:*:11:13:uucp:/var/spool/uucp:
    operator:*:12:0:operator:/root:
    games:*:13:100:games:/usr/games:
    ftp:*:15:14:ftp:/var/ftp:
    man:*:16:100:man:/var/cache/man:
    telnetd:*:17:100:telnetd:/var/tmp:
    nobody:*:65534:65534:nobody:/home:/bin/sh

```$ file squashfs-root/bin/busybox```

    squashfs-root/bin/busybox: ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV),
    dynamically linked, interpreter /lib/ld-linux-armhf.so.3, for GNU/Linux 3.1.1,
    BuildID[sha1]=c237db48ec5a6134b9b6f878da20759dc2a683cd, stripped

### Phoning Home?

```$ find . -type f | xargs grep baidu```

    ./squashfs-root/var/www/html/connectCheckConfig.html:<label id="connect_check_addr_1" class="ui-label fn-padl20 fn-width150">www.baidu.com</label>
    Binary file ./squashfs-root/opt/ch/libtools.so matches

```$ find . -type f | xargs grep ictun.com```

    Binary file ./squashfs-root/opt/ch/danale_server matches


