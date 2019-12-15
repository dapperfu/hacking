# "4k" Action Cam

Bought at Menards for ~$30

https://www.menards.com/main/electrical/home-electronics/small-electronics/4k-wifi-action-camera/170721-ag-sc25/p-1526538562352.htm
https://www.menards.com/main/electrical/home-electronics/small-electronics/4k-ultra-hd-digital-wi-fi-action-camera/dv9000a/p-1493187939356.htm

## PC Mode

Shows up as a ```/dev/video#``` device on linux.

ffprobe:

        Stream #0:0: Video: mjpeg (Baseline), yuvj420p(pc, bt470bg/unknown/unknown),
        1280x720, 30 fps, 30 tbr, 1000k tbn, 1000k tbc

uvcdynctrl:

        $ uvcdynctrl --formats /dev/video3 
        Listing available frame formats for device video0:
        Pixel format: YUYV (YUYV 4:2:2; MIME type: video/x-raw-yuv)
          Frame size: 640x480
            Frame rates: 30, 20, 15, 10, 5
          Frame size: 352x288
            Frame rates: 30, 20, 15, 10, 5
          Frame size: 320x240
            Frame rates: 30, 20, 15, 10, 5
          Frame size: 176x144
            Frame rates: 30, 20, 15, 10, 5
          Frame size: 160x120
            Frame rates: 30, 20, 15, 10, 5
          Frame size: 1280x720
            Frame rates: 10, 5
        Pixel format: MJPG (Motion-JPEG; MIME type: image/jpeg)
          Frame size: 1280x720
            Frame rates: 30, 20, 15, 10, 5

## Firmware Information

        - Model: 
        - Version: 20170516V23
        - Updated: 20170516
        - Manfacturer: 

## Wifi 

        SSID: ``` 4KActionCam```
        Password: 1234567890

        [.../4k_UltraHD_ActionCam]$ ifconfig wlp2s0
        wlp2s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
                inet 192.168.100.109  netmask 255.255.255.0  broadcast 192.168.100.255


        [.../4k_UltraHD_ActionCam]$ nmap 192.168.100.1

        Starting Nmap 7.60 ( https://nmap.org ) at 2019-01-12 15:04 EST
        Nmap scan report for _gateway (192.168.100.1)
        Host is up (0.0034s latency).
        Not shown: 997 closed ports
        PORT     STATE SERVICE
        53/tcp   open  domain
        80/tcp   open  http
        6666/tcp open  irc

        Nmap done: 1 IP address (1 host up) scanned in 1.39 seconds

        [.../4k_UltraHD_ActionCam]$ nmap -T4 -p- 192.168.100.1

        Starting Nmap 7.60 ( https://nmap.org ) at 2019-01-12 15:04 EST
        Nmap scan report for _gateway (192.168.100.1)
        Host is up (0.0056s latency).
        Not shown: 65532 closed ports
        PORT     STATE SERVICE
        53/tcp   open  domain
        80/tcp   open  http
        6666/tcp open  irc

        Nmap done: 1 IP address (1 host up) scanned in 19.48 seconds

# ADB Debugging

(Yes, it's an Android)`

        $ adb shell
        root@camdroid:/ # pwd
        /

        root@camdroid:/ # cat /proc/cpuinfo                                            
        Processor	: ARMv7 Processor rev 5 (v7l)
        BogoMIPS	: 4800.00
        Features	: swp half thumb fastmult vfp edsp thumbee neon vfpv3 tls vfpv4 idiva idivt 
        CPU implementer	: 0x41
        CPU architecture: 7
        CPU variant	: 0x0
        CPU part	: 0xc07
        CPU revision	: 5

        Hardware	: sun8i
        Revision	: 0000
        Serial		: 8400503705244445074f


        root@camdroid:/ # ps
        USER     PID   PPID  VSIZE  RSS     WCHAN    PC         NAME
        root      1     0     316    184   c001f0f0 0001a398 S /init
        root      2     0     0      0     c0033de8 00000000 S kthreadd
        root      3     2     0      0     c00213e4 00000000 S ksoftirqd/0
        root      4     2     0      0     c0030714 00000000 S kworker/0:0
        root      5     2     0      0     c0030714 00000000 S kworker/u:0
        root      6     2     0      0     c002fb98 00000000 S khelper
        root      7     2     0      0     c01a2cf4 00000000 S kdevtmpfs
        root      8     2     0      0     c00681dc 00000000 S sync_supers
        root      9     2     0      0     c0068f20 00000000 S bdi-default
        root      10    2     0      0     c002fb98 00000000 S kblockd
        root      11    2     0      0     c0199750 00000000 S sytem
        root      12    2     0      0     c01ca0e8 00000000 S khubd
        root      13    2     0      0     c0030714 00000000 S kworker/0:1
        root      14    2     0      0     c002fb98 00000000 S cfg80211
        root      16    2     0      0     c004f054 00000000 S khungtaskd
        root      17    2     0      0     c0063ba8 00000000 S kswapd0
        root      18    2     0      0     c00abdc8 00000000 S fsnotify_mark
        root      19    2     0      0     c0030714 00000000 S kworker/u:1
        root      28    2     0      0     c002fb98 00000000 S SunxiDisCommit
        root      29    2     0      0     c002fb98 00000000 S Sunxi_WB
        root      30    2     0      0     c002fb98 00000000 S spi.0
        root      35    2     0      0     c01bf46c 00000000 S mtdblock0
        `root      36    2     0      0     c01bf46c 00000000 S mtdblock1
        root      37    2     0      0     c01bf46c 00000000 S mtdblock2
        root      38    2     0      0     c01bf46c 00000000 S mtdblock3
        root      39    2     0      0     c01bf46c 00000000 S mtdblock4
        root      40    2     0      0     c01bf46c 00000000 S mtdblock5
        root      41    2     0      0     c01bf46c 00000000 S mtdblock6
        root      42    2     0      0     c01bf46c 00000000 S mtdblock7
        root      43    2     0      0     c002fb98 00000000 S f_mtp
        root      44    2     0      0     c01e7d84 00000000 S file-storage
        root      45    2     0      0     c0030714 00000000 S kworker/0:2
        root      46    2     0      0     c024b0a0 00000000 S cfinteractive
        root      47    2     0      0     c002fb98 00000000 S binder
        root      48    2     0      0     c002fb98 00000000 S switch_resume
        root      49    2     0      0     c002fb98 00000000 S codec_init
        root      50    2     0      0     c0030714 00000000 S kworker/u:2
        root      51    2     0      0     c016e478 00000000 S ep952_task
        root      52    2     0      0     c002fb98 00000000 S deferwq
        root      53    1     348    188   c008b244 0000efd8 S /sbin/ueventd
        root      54    1     496    344   c008b244 0000efd8 S /init
        root      55    2     0      0     c00e0dc8 00000000 S jffs2_gcd_mtd3
        system    56    54    888    324   c02721dc 400880d8 S /system/bin/servicemanager
        root      57    54    4064   852   ffffffff 40066884 S /system/bin/vold
        root      59    54    932    392   c02aa6b8 400bfb88 S /system/bin/debuggerd
        root      60    54    88824  4204  ffffffff 401770d8 S /system/bin/mediaserver
        root      61    54    25764  5564  ffffffff 401bf260 S /system/bin/sdv
        root      62    54    816    456   c017ede8 4013be68 S /system/bin/sh
        root      63    2     0      0     c025b874 00000000 S mmcqd/0
        root      64    2     0      0     c0030714 00000000 S kworker/u:3
        root      116   2     0      0     c0038490 00000000 S xradio_etf
        root      119   2     0      0     c002fb98 00000000 S xradio_wq
        root      120   2     0      0     bf201c20 00000000 S xradio_bh
        root      131   54    4476   208   ffffffff 000160cc S /sbin/adbd
        root      132   54    2708   676   ffffffff 400e10d8 S /system/bin/standbyservice
        root      133   2     0      0     c0099ed4 00000000 S flush-mtd-unmap
        root      160   131   816    468   c0010e34 400eaa64 S /system/bin/sh
        root      168   160   1100   404   00000000 4016de68 R ps
        root@camdroid:/ # 

        root@camdroid:/ # df
        Filesystem             Size   Used   Free   Blksize
        /dev                    79M    32K    79M   4096
        /system                  6M     6M     0K   131072
        /data                    2M   244K     1M   4096

        130|root@camdroid:/ # cat /proc/mtd                                            
        dev:    size   erasesize  name
        mtd0: 00040000 00010000 "uboot"
        mtd1: 002c0000 00010000 "boot"
        mtd2: 00630000 00010000 "system"
        mtd3: 00200000 00010000 "cfg"
        mtd4: 00020000 00010000 "boot_logo"
        mtd5: 00020000 00010000 "shutdown_logo"
        mtd6: 00010000 00010000 "env"
        mtd7: 00010000 00010000 "private"

        root@camdroid:/ # mount
        rootfs / rootfs rw 0 0
        tmpfs /dev tmpfs rw,nosuid,relatime,mode=755 0 0
        devpts /dev/pts devpts rw,relatime,mode=600,ptmxmode=000 0 0
        proc /proc proc rw,relatime 0 0
        sysfs /sys sysfs rw,relatime 0 0
        /dev/block/mtdblock2 /system squashfs ro,relatime 0 0
        /dev/block/mtdblock3 /data jffs2 rw,relatime 0 0
        none /sys/kernel/debug debugfs rw,relatime 0 0

        |root@camdroid:/system # ls /dev/                                           
        android_adb         sunxi-reg           tty30               tty55             
        ashmem              sunxi_pwm           tty31               tty56             
        binder              tty                 tty32               tty57             
        block/              tty0                tty33               tty58             
        cedar_dev           tty1                tty34               tty59             
        console             tty10               tty35               tty6              
        cpu_dma_latency     tty11               tty36               tty60             
        disp                tty12               tty37               tty61             
        full                tty13               tty38               tty62             
        graphics/           tty14               tty39               tty63             
        ifm                 tty15               tty4                tty7              
        input/              tty16               tty40               tty8              
        ion                 tty17               tty41               tty9              
        kmsg                tty18               tty42               ttyGS0            
        log/                tty19               tty43               ttyGS1            
        mem                 tty2                tty44               ttyGS2            
        mtd/                tty20               tty45               ttyGS3            
        mtp_usb             tty21               tty46               ttyS0             
        network_latency     tty22               tty47               urandom           
        network_throughput  tty23               tty48               usb_accessory     
        null                tty24               tty49               vcs               
        ptmx                tty25               tty5                vcs1              
        pts/                tty26               tty50               vcsa              
        random              tty27               tty51               vcsa1             
        rtc0                tty28               tty52               video0            
        snd/                tty29               tty53               watchdog          
        socket/             tty3                tty54               zero  

        adb push ./toybox-armv7l /mnt/extsd

        root@camdroid:/mnt/extsd # ./toybox-armv7l lsmod                               
        Module                  Size  Used by
        xradio_wlan              603  0 
        xradio_core           232571  1 xradio_wlan
        xradio_mac            222698  1 xradio_core
        vfe_v4l2             1203348  1 
        imx179s               392943  0 
        vfe_subdev              4399  2 vfe_v4l2,imx179s
        vfe_os                  3501  2 vfe_v4l2,vfe_subdev
        cci                    19274  2 vfe_v4l2,imx179s
        videobuf_dma_contig     3869  1 vfe_v4l2
        videobuf_core          15435  2 vfe_v4l2,videobuf_dma_contig


        1|root@camdroid:/mnt/extsd # ./toybox-armv7l vmstat                            
        procs -----------memory---------- ---swap-- -----io---- -system-- ----cpu----
         r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa 0  0      0 136872      8   6360    0    0    26    26    0 2136  3 14 83  0

        root@camdroid:/mnt/extsd # ./toybox-armv7l ps -lA                              
        F S   UID   PID  PPID C PRI  NI BIT    SZ WCHAN  TTY          TIME CMD            
        4 S     0     1     0 0  19   0  32    79 do_wait ?       00:00:00 init
        1 S     0     2     0 0  41   0   -     0 kthreadd ?      00:00:00 kthreadd
        1 S     0     3     2 0  19   0   -     0 run_ksoftirqd ? 00:00:06 ksoftirqd/0
        1 S     0     6     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 khelper
        5 S     0     7     2 0  19   0   -     0 devtmpfsd ?     00:00:00 kdevtmpfs
        1 S     0     8     2 0  19   0   -     0 bdi_sync_supers ? 00:00:00 sync_supers
        1 S     0     9     2 0  19   0   -     0 bdi_forker_thread ? 00:00:00 bdi-default
        1 S     0    10     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 kblockd
        1 S     0    11     2 0  19   0   -     0 ion_heap_deferred_free ? 00:00:00 sytem
        1 S     0    12     2 0  19   0   -     0 hub_thread ?    00:00:00 khubd
        1 S     0    14     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 cfg80211
        1 S     0    16     2 0  19   0   -     0 watchdog ?      00:00:00 khungtaskd
        1 S     0    17     2 0  19   0   -     0 kswapd ?        00:00:00 kswapd0
        1 S     0    18     2 0  19   0   -     0 fsnotify_mark_destroy ? 00:00:00 fsnotify_mark
        1 S     0    28     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 SunxiDisCommit
        1 S     0    29     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 Sunxi_WB
        1 S     0    30     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 spi.0
        1 S     0    35     2 0  19   0   -     0 mtd_blktrans_thread ? 00:00:00 mtdblock0
        1 S     0    36     2 0  19   0   -     0 mtd_blktrans_thread ? 00:00:00 mtdblock1
        1 S     0    37     2 0  19   0   -     0 mtd_blktrans_thread ? 00:00:04 mtdblock2
        1 S     0    38     2 0  19   0   -     0 mtd_blktrans_thread ? 00:00:00 mtdblock3
        1 S     0    39     2 0  19   0   -     0 mtd_blktrans_thread ? 00:00:00 mtdblock4
        1 S     0    40     2 0  19   0   -     0 mtd_blktrans_thread ? 00:00:00 mtdblock5
        1 S     0    41     2 0  19   0   -     0 mtd_blktrans_thread ? 00:00:00 mtdblock6
        1 S     0    42     2 0  19   0   -     0 mtd_blktrans_thread ? 00:00:00 mtdblock7
        1 S     0    43     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 f_mtp
        1 S     0    44     2 0  19   0   -     0 sleep_thread ?  00:00:02 file-storage
        1 S     0    46     2 0 139   0   -     0 cpufreq_interactive_speedchange_task ? 00:00:00 cfinteractive
        1 S     0    47     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 binder
        1 S     0    48     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 switch_resume
        1 S     0    49     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 codec_init
        1 S     0    51     2 1  19   0   -     0 ep952_thread ?  00:01:28 ep952_task
        1 S     0    52     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 deferwq
        4 S     0    53     1 0  19   0  32    87 poll_schedule_timeout ? 00:00:00 ueventd
        5 S     0    54     1 0  19   0  32   124 poll_schedule_timeout ? 00:00:00 init
        1 S     0    55     2 0   9  10   -     0 jffs2_garbage_collect_thread ? 00:00:00 jffs2_gcd_mtd3
        4 S  1000    56    54 0  19   0  32   222 binder_thread_read ? 00:00:00 servicemanager
        4 S     0    57    54 0  19   0  32  1016 hrtimer_nanosleep ? 00:00:00 vold
        0 S     0    59    54 0  19   0  32   233 __skb_recv_datagram ? 00:00:00 debuggerd
        4 S     0    60    54 9  19   0  32 22419 binder_thread_read ? 00:16:03 mediaserver
        4 S     0    61    54 7  19   0  32  7466 futex_wait_queue_me ? 00:11:43 sdv
        4 S     0    62    54 0  19   0  32   204 n_tty_read ttyS0 00:00:00 sh
        1 S     0    63     2 0  19   0   -     0 mmc_queue_thread ? 00:00:00 mmcqd/0
        1 S     0   116     2 0  19   0   -     0 down_interruptible ? 00:00:00 xradio_etf
        1 S     0   119     2 0  39 -20   -     0 rescuer_thread ? 00:00:00 xradio_wq
        1 S     0   120     2 1  41   0   -     0 xradio_bh ?     00:01:43 xradio_bh
        4 S     0   131    54 0  19   0  32  1134 poll_schedule_timeout ? 00:00:02 adbd
        4 S     0   132    54 0  19   0  32   677 binder_thread_read ? 00:00:00 standbyservice
        4 S  1010  1567    61 0  19   0  32   591 poll_schedule_timeout ? 00:00:00 hostapd
        4 S     0  1571    61 0  19   0  32   246 poll_schedule_timeout ? 00:00:00 dnsmasq
        4 S     0  1837   131 0  19   0  32   205 sys_sigsuspend pts/1 00:00:00 sh
        1 S     0  2844     2 5  19   0   -     0 worker_thread ? 00:05:37 kworker/0:0
        1 S     0  2904     2 0  19   0   -     0 worker_thread ? 00:00:14 kworker/u:1
        1 S     0  3254     2 0  19   0   -     0 worker_thread ? 00:00:00 kworker/u:2
        1 S     0  5134     2 0  19   0   -     0 worker_thread ? 00:00:00 kworker/0:2
        1 S     0  5187     2 0  19   0   -     0 bdi_writeback_thread ? 00:00:00 flush-mtd-unmap
        1 S     0  5188     2 0  19   0   -     0 bdi_writeback_thread ? 00:00:00 flush-179:0
        1 S     0  5240     2 4  19   0   -     0 worker_thread ? 00:00:11 kworker/0:1
        0 R     0  5368  1837 12 19   0  32   189 0      pts/1    00:00:00 toybox-armv7l
        Z

        root@camdroid:/mnt/extsd # ./toybox-armv7l netstat -ltp                        
        Active Internet connections (only servers)
        Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program Name
        tcp        0      0 0.0.0.0:6666            0.0.0.0:*               LISTEN      61/sdv
        tcp        0      0 localhost:5037          0.0.0.0:*               LISTEN      131/adbd
        tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      61/sdv
        tcp        0      0 0.0.0.0:53              0.0.0.0:*               LISTEN      1571/dnsmasq

