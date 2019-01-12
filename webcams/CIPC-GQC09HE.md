# CIPC-GQC09HE


telnet: root/cxlinux

Mount NFS share.

    mount -o port=2049,nolock,proto=tcp -t nfs 192.168.250.5:/tmp /tmp/mnt/

Cloud IP Camera

 nmap -p 1-65535 172.16.16.142

Starting Nmap 7.60 ( https://nmap.org ) at 2018-12-24 14:52 EST
Nmap scan report for 172.16.16.142
Host is up (0.0024s latency).
Not shown: 65527 closed ports
PORT     STATE SERVICE
23/tcp   open  telnet
80/tcp   open  http
554/tcp  open  rtsp
3201/tcp open  cpq-tasksmart
6670/tcp open  irc
7101/tcp open  elcn
7103/tcp open  unknown
8001/tcp open  vcom-tunnel


nmap -O -A 10.0.2.232

Starting Nmap 7.60 ( https://nmap.org ) at 2018-12-29 12:42 EST
Nmap scan report for 10.0.2.232
Host is up (0.00040s latency).
Not shown: 995 closed ports
PORT     STATE SERVICE     VERSION
23/tcp   open  telnet      BusyBox telnetd
80/tcp   open  nagios-nsca Nagios NSCA
|_http-server-header: Ginatex-HTTPServer
554/tcp  open  rtsp
| fingerprint-strings: 
|   FourOhFourRequest: 
|     HTTP/1.1 404 Not Found
|     Server: TAS-Tech IPCam
|     Date: Sun, 29 Dec 118 17:42:48 GMT
|     Content-Length: 9
|     Cache-Control: no-cache
|     Found
|   GetRequest: 
|     HTTP/1.1 404 Not Found
|     Server: TAS-Tech IPCam
|     Date: Sun, 29 Dec 118 17:42:33 GMT
|     Content-Length: 9
|     Cache-Control: no-cache
|     Found
|   HTTPOptions: 
|     HTTP/1.1 405 Method Not Allowed
|     Server: TAS-Tech IPCam
|     Date: Sun, 29 Dec 118 17:42:43 GMT
|     Content-Length: 18
|     Cache-Control: no-cache
|     Method Not Allowed
|   RTSPRequest: 
|     RTSP/1.0 200 OK
|     CSeq: 0
|     Server: TAS-Tech Streaming Server V100R001
|_    Public: DESCRIBE, SET_PARAMETER, SETUP, TEARDOWN, PAUSE, PLAY
|_rtsp-methods: DESCRIBE, SET_PARAMETER, SETUP, TEARDOWN, PAUSE, PLAY
7103/tcp open  tcpwrapped
8001/tcp open  rtsp
| fingerprint-strings: 
|   FourOhFourRequest: 
|     HTTP/1.1 404 Not Found
|     Server: TAS-Tech IPCam
|     Date: Sun, 29 Dec 118 17:42:38 GMT
|     Content-Length: 9
|     Cache-Control: no-cache
|     Found
|   GetRequest: 
|     HTTP/1.1 404 Not Found
|     Server: TAS-Tech IPCam
|     Date: Sun, 29 Dec 118 17:42:33 GMT
|     Content-Length: 9
|     Cache-Control: no-cache
|     Found
|   HTTPOptions: 
|     HTTP/1.1 405 Method Not Allowed
|     Server: TAS-Tech IPCam
|     Date: Sun, 29 Dec 118 17:42:43 GMT
|     Content-Length: 18
|     Cache-Control: no-cache
|     Method Not Allowed
|   RTSPRequest: 
|     RTSP/1.0 200 OK
|     CSeq: 0
|     Server: TAS-Tech Streaming Server V100R001
|_    Public: DESCRIBE, SET_PARAMETER, SETUP, TEARDOWN, PAUSE, PLAY
|_rtsp-methods: DESCRIBE, SET_PARAMETER, SETUP, TEARDOWN, PAUSE, PLAY
2 services unrecognized despite returning data. If you know the service/version, please submit the following fingerprints at https://nmap.org/cgi-bin/submit.cgi?new-service :
==============NEXT SERVICE FINGERPRINT (SUBMIT INDIVIDUALLY)==============
SF-Port554-TCP:V=7.60%I=7%D=12/29%Time=5C27B20F%P=x86_64-pc-linux-gnu%r(Ge
SF:tRequest,8B,"HTTP/1\.1\x20404\x20Not\x20Found\r\nServer:\x20TAS-Tech\x2
SF:0IPCam\r\nDate:\x20Sun,\x2029\x20Dec\x20118\x2017:42:33\x20GMT\r\nConte
SF:nt-Length:\x209\r\nCache-Control:\x20no-cache\r\n\r\nNot\x20Found")%r(R
SF:TSPRequest,87,"RTSP/1\.0\x20200\x20OK\r\nCSeq:\x200\r\nServer:\x20TAS-T
SF:ech\x20Streaming\x20Server\x20V100R001\r\nPublic:\x20DESCRIBE,\x20SET_P
SF:ARAMETER,\x20SETUP,\x20TEARDOWN,\x20PAUSE,\x20PLAY\r\n\r\n")%r(HTTPOpti
SF:ons,9E,"HTTP/1\.1\x20405\x20Method\x20Not\x20Allowed\r\nServer:\x20TAS-
SF:Tech\x20IPCam\r\nDate:\x20Sun,\x2029\x20Dec\x20118\x2017:42:43\x20GMT\r
SF:\nContent-Length:\x2018\r\nCache-Control:\x20no-cache\r\n\r\nMethod\x20
SF:Not\x20Allowed")%r(FourOhFourRequest,8B,"HTTP/1\.1\x20404\x20Not\x20Fou
SF:nd\r\nServer:\x20TAS-Tech\x20IPCam\r\nDate:\x20Sun,\x2029\x20Dec\x20118
SF:\x2017:42:48\x20GMT\r\nContent-Length:\x209\r\nCache-Control:\x20no-cac
SF:he\r\n\r\nNot\x20Found");
==============NEXT SERVICE FINGERPRINT (SUBMIT INDIVIDUALLY)==============
SF-Port8001-TCP:V=7.60%I=7%D=12/29%Time=5C27B20F%P=x86_64-pc-linux-gnu%r(G
SF:etRequest,8B,"HTTP/1\.1\x20404\x20Not\x20Found\r\nServer:\x20TAS-Tech\x
SF:20IPCam\r\nDate:\x20Sun,\x2029\x20Dec\x20118\x2017:42:33\x20GMT\r\nCont
SF:ent-Length:\x209\r\nCache-Control:\x20no-cache\r\n\r\nNot\x20Found")%r(
SF:FourOhFourRequest,8B,"HTTP/1\.1\x20404\x20Not\x20Found\r\nServer:\x20TA
SF:S-Tech\x20IPCam\r\nDate:\x20Sun,\x2029\x20Dec\x20118\x2017:42:38\x20GMT
SF:\r\nContent-Length:\x209\r\nCache-Control:\x20no-cache\r\n\r\nNot\x20Fo
SF:und")%r(HTTPOptions,9E,"HTTP/1\.1\x20405\x20Method\x20Not\x20Allowed\r\
SF:nServer:\x20TAS-Tech\x20IPCam\r\nDate:\x20Sun,\x2029\x20Dec\x20118\x201
SF:7:42:43\x20GMT\r\nContent-Length:\x2018\r\nCache-Control:\x20no-cache\r
SF:\n\r\nMethod\x20Not\x20Allowed")%r(RTSPRequest,87,"RTSP/1\.0\x20200\x20
SF:OK\r\nCSeq:\x200\r\nServer:\x20TAS-Tech\x20Streaming\x20Server\x20V100R
SF:001\r\nPublic:\x20DESCRIBE,\x20SET_PARAMETER,\x20SETUP,\x20TEARDOWN,\x2
SF:0PAUSE,\x20PLAY\r\n\r\n");
MAC Address: A0:9D:C1:A4:1C:00 (Unknown)
Device type: general purpose
Running: Linux 2.6.X|3.X
OS CPE: cpe:/o:linux:linux_kernel:2.6 cpe:/o:linux:linux_kernel:3
OS details: Linux 2.6.32 - 3.10
Network Distance: 1 hop
Service Info: Host: localhost

