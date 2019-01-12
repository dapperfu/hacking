# Home 
    v1: AIO routers.. <2004
    v2: ddWRT on stuff. 2004-2010
    v3: OpenWRT on DIR-825B2. 2010-2014
    v4: ERL v3 w/UniFi on old laptop. (~2014-2018)
    v5: UniFi Security Gateway 3P, Cloud Key (2019-)

### ```$ nmap -sP 192.168.1.100/24```:

    Starting Nmap 7.60 ( https://nmap.org ) at 2018-12-29 16:21 EST
    Nmap scan report for setup.ubnt.com (192.168.1.1)
    Host is up (0.00041s latency).
    Nmap scan report for UniFi-CloudKey (192.168.1.6)
    Host is up (0.00040s latency).
    Nmap scan report for m6700 (192.168.1.100)
    Host is up (0.000075s latency).
    Nmap done: 256 IP addresses (3 hosts up) scanned in 2.31 seconds

### ```$ nmap -p- setup.ubnt.com```:



    Starting Nmap 7.60 ( https://nmap.org ) at 2018-12-29 16:25 EST
    Nmap scan report for setup.ubnt.com (192.168.1.1)
    Host is up (0.028s latency).
    Not shown: 65530 closed ports
    PORT    STATE SERVICE
    22/tcp  open  ssh
    53/tcp  open  domain
    80/tcp  open  http
    443/tcp open  https
    843/tcp open  unknown


Starting Nmap 7.60 ( https://nmap.org ) at 2018-12-29 18:02 EST
Nmap scan report for 10.0.2.216
Host is up (0.00015s latency).
All 65535 scanned ports on 10.0.2.216 are filtered
MAC Address: B4:FB:E4:2A:F5:3B (Ubiquiti Networks)

Nmap done: 1 IP address (1 host up) scanned in 1314.57 seconds



## CloudKey

```$ nmap -p- UniFi-CloudKey```:

    Starting Nmap 7.60 ( https://nmap.org ) at 2018-12-29 16:26 EST
    Nmap scan report for UniFi-CloudKey (192.168.1.6)
    Host is up (0.013s latency).
    Not shown: 65527 closed ports
    PORT     STATE SERVICE
    22/tcp   open  ssh
    80/tcp   open  http
    443/tcp  open  https
    6789/tcp open  ibm-db2-admin
    8080/tcp open  http-proxy
    8443/tcp open  https-alt
    8843/tcp open  unknown
    8880/tcp open  cddbp-alt

```root@UniFi-CloudKey:~# df -h```:
    
    Filesystem                     Size  Used Avail Use% Mounted on
    aufs-root                      2.9G   11M  2.9G   1% /
    udev                            10M     0   10M   0% /dev
    tmpfs                          404M  436K  404M   1% /run
    /dev/disk/by-label/userdata    2.9G   11M  2.9G   1% /mnt/.rwfs
    /dev/disk/by-partlabel/rootfs  356M  356M     0 100% /mnt/.rofs
    tmpfs                         1009M     0 1009M   0% /dev/shm
    tmpfs                          5.0M     0  5.0M   0% /run/lock
    tmpfs                         1009M     0 1009M   0% /sys/fs/cgroup
    tmpfs                         1009M   64K 1009M   1% /tmp
    /dev/mmcblk0p8                  11G  137M   11G   2% /srv
    /dev/mmcblk1p1                 7.2G   17M  7.2G   1% /data

```root@UniFi-CloudKey:~# cat /proc/cpuinfo```:
    
    Processor	: ARMv7 Processor rev 3 (v7l)
    processor	: 0
    BogoMIPS	: 1489.66
    Features	: swp half thumb fastmult vfp edsp thumbee neon vfpv3 tls vfpv4 idiva idivt 
    CPU implementer	: 0x41
    CPU architecture: 7
    CPU variant	: 0x0
    CPU part	: 0xc07
    CPU revision	: 3
    
    Processor	: ARMv7 Processor rev 3 (v7l)
    processor	: 1
    BogoMIPS	: 1494.37
    Features	: swp half thumb fastmult vfp edsp thumbee neon vfpv3 tls vfpv4 idiva idivt 
    CPU implementer	: 0x41
    CPU architecture: 7
    CPU variant	: 0x0
    CPU part	: 0xc07
    CPU revision	: 3
    
    Processor	: ARMv7 Processor rev 3 (v7l)
    processor	: 2
    BogoMIPS	: 1494.37
    Features	: swp half thumb fastmult vfp edsp thumbee neon vfpv3 tls vfpv4 idiva idivt 
    CPU implementer	: 0x41
    CPU architecture: 7
    CPU variant	: 0x0
    CPU part	: 0xc07
    CPU revision	: 3
    
    Processor	: ARMv7 Processor rev 3 (v7l)
    processor	: 3
    BogoMIPS	: 1494.37
    Features	: swp half thumb fastmult vfp edsp thumbee neon vfpv3 tls vfpv4 idiva idivt 
    CPU implementer	: 0x41
    CPU architecture: 7
    CPU variant	: 0x0
    CPU part	: 0xc07
    CPU revision	: 3
    
    Hardware	: MT7623
    Revision	: 0000
    Serial		: 0000000000000000
    

UniFi AP-AC-Mesh

Pre-Adoption:

    $ nmap -T4 -p- 192.168.1.105
    
    Starting Nmap 7.60 ( https://nmap.org ) at 2018-12-29 17:58 EST
    Nmap scan report for 192.168.1.105
    Host is up (0.0035s latency).
    Not shown: 65534 closed ports
    PORT   STATE SERVICE
    22/tcp open  ssh
    
    Nmap done: 1 IP address (1 host up) scanned in 3.21 seconds

Post-Adoption:

