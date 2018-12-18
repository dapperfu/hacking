# SV-D02POE-5MPL-A

- [SV3C IP POE Security Camera,5MP HD 2592x1944P Dome Camera Indoor/Outdoor Wired Surveillance Camera, Remote View IP66 Waterproof Camera H.265 Onvif IR Night Vision Motion Detection](https://www.amazon.com/Security-2592x1944P-Surveillance-Waterproof-Detection/dp/B07DXNDXZR).
- $59.99 Amazon Dec 2018.

# Device Probing:

From web interface, Information > Version:

```
Kernel Version
Linux 3.18.30 #20 PREEMPT Thu Jan 11 11:21:55 CST 2018 armv7l
File System Version
MC200E2_200W_V0_BU V2.3.14 build 2018-09-25 13:49:44
Web Version
2018-09-07 12:28:00
```

```nmap -O```:

    Starting Nmap 7.60 ( https://nmap.org ) at 2018-12-18 03:36 EST
    Not shown: 995 closed ports
    PORT      STATE SERVICE
    80/tcp    open  http
    554/tcp   open  rtsp
    8000/tcp  open  http-alt
    8200/tcp  open  trivnet1
    49159/tcp open  unknown
    MAC Address: F0:00:00:XX:XX:XX (Unknown)
    No exact OS matches for host (If you know what OS is running on it, see https://nmap.org/submit/ ).
    TCP/IP fingerprint:
    OS:SCAN(V=7.60%E=4%D=12/18%OT=80%CT=1%CU=36878%PV=Y%DS=1%DC=D%G=Y%M=F00000%
    OS:TM=5C18B1B1%P=x86_64-pc-linux-gnu)SEQ(SP=103%GCD=2%ISR=10D%TI=Z%CI=I%TS=
    OS:7)SEQ(SP=103%GCD=1%ISR=10D%TI=Z%CI=I%II=I%TS=7)OPS(O1=M5B4ST11NW1%O2=M5B
    OS:4ST11NW1%O3=M5B4NNT11NW1%O4=M5B4ST11NW1%O5=M5B4ST11NW1%O6=M5B4ST11)WIN(W
    OS:1=7120%W2=7120%W3=7120%W4=7120%W5=7120%W6=7120)ECN(R=Y%DF=Y%T=40%W=7210%
    OS:O=M5B4NNSNW1%CC=Y%Q=)T1(R=Y%DF=Y%T=40%S=O%A=S+%F=AS%RD=0%Q=)T2(R=N)T3(R=
    OS:N)T4(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)T5(R=Y%DF=Y%T=40%W=0%S=Z%A
    OS:=S+%F=AR%O=%RD=0%Q=)T6(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)T7(R=Y%D
    OS:F=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)U1(R=Y%DF=N%T=40%IPL=164%UN=0%RIPL
    OS:=G%RID=G%RIPCK=G%RUCK=G%RUD=G)IE(R=Y%DFI=N%T=40%CD=S)


Host name lookups (via pi-hole logs):

```
$ export CAM_IP=
$ grep ${CAM_IP} /var/log/pihole.log | cut -f8 -d" " | sort | uniq
```

    conn-policy.ictun.com
    conn-policy.ictun.com.lan
    dns.ictun.com
    dns.ictun.com.lan
    hb.icamra.com
    hb.icamra.com.lan
    www.baidu.com
    www.baidu.com.lan

Information probed by Amcrest NVR:

- Manufacturer: Onvif
- Device Name: 
- Type: MC200E2_200W

