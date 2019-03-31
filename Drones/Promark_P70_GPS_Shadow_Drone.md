# Promark P70 GPS Shadow Drone

Promark P70 GPS Shadow Drone - Premier GPS-Enabled Drone with Follow Me Technology - 6-Axis Gyroscope for Panoramic Shots - Lithium Batteries Included - 720p WiFi Camera - Includes VR Goggles

- [Promark Product Page](https://promarkdrones.com/product/gps-shadow-drone/)
- [Promark GPS app](https://play.google.com/store/apps/details?id=macrochip.app.sjtst.ui&hl=en_US)

- MSRP: $179.00 (Clearance @Walmart for $45).
- SKU: 586858833
- UPC: 859689006410

The drone exposes a wifi network named ```Promark-xxxxxx```:

Subnet: 172.16.10.1/24


```# nmap -O```:

    Starting Nmap 7.60 ( https://nmap.org ) at 2018-12-18 05:50 EST
    Not shown: 998 closed ports
    PORT     STATE SERVICE
    23/tcp   open  telnet
    8888/tcp open  sun-answerbook
    MAC Address: EC:3D:FD:XX:XX:XX (Shenzhen Bilian Electronicltd)
    No exact OS matches for host (If you know what OS is running on it, see https://nmap.org/submit/ ).
    TCP/IP fingerprint:
    OS:SCAN(V=7.60%E=4%D=12/18%OT=23%CT=1%CU=35282%PV=Y%DS=1%DC=D%G=Y%M=EC3DFD%
    OS:TM=5C18D150%P=x86_64-pc-linux-gnu)SEQ(SP=18%GCD=1%ISR=58%TI=I%CI=I%TS=U)
    OS:SEQ(SP=19%GCD=1%ISR=58%TI=I%CI=RD%II=RI%SS=O%TS=U)SEQ(SP=1C%GCD=1%ISR=59
    OS:%TI=I%TS=U)OPS(O1=M5B4%O2=M5B4%O3=M5B4%O4=M5B4%O5=M5B4%O6=M5B4)WIN(W1=20
    OS:00%W2=2000%W3=2000%W4=2000%W5=2000%W6=2000)ECN(R=Y%DF=N%T=FF%W=2000%O=M5
    OS:B4%CC=N%Q=)T1(R=Y%DF=N%T=FF%S=O%A=S+%F=AS%RD=0%Q=)T2(R=N)T3(R=Y%DF=N%T=F
    OS:F%W=2000%S=O%A=S+%F=AS%O=M5B4%RD=0%Q=)T4(R=Y%DF=N%T=FF%W=2000%S=A%A=S%F=
    OS:AR%O=%RD=0%Q=)T5(R=Y%DF=N%T=FF%W=2000%S=A%A=S+%F=AR%O=%RD=0%Q=)T6(R=Y%DF
    OS:=N%T=FF%W=2000%S=A%A=S%F=AR%O=%RD=0%Q=)T7(R=Y%DF=N%T=FF%W=2000%S=A%A=S+%
    OS:F=AR%O=%RD=0%Q=)U1(R=Y%DF=N%T=FF%IPL=38%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G
    OS:%RUD=G)IE(R=Y%DFI=S%T=FF%CD=S)

```# telnet 172.16.10.1```

    Trying 172.16.10.1...
    Connected to 172.16.10.1.
    Escape character is '^]'.

     \ | /
    - RT -     Thread Operating System
     / | \     2.0.1 build Jun 10 2017
     2006 - 2015 Copyright by rt-thread team
    finsh>>fr=25 rr=25, sr=25,gf=734


> *RT-Thread is an open source IoT operating system from China.*

- http://www.rt-thread.org
- https://github.com/RT-Thread/rt-thread



# Crashing the software:

It is possible to crash the Drone's RTOS with nmap. The LED's start blinking 'different', if you're connected via telnet you get a stack dump:

```nmap -T4 -p 1-65535 172.16.10.1```

```nmap -T3 -p 1-65535 172.16.10.1```


```
Assertion: 1159 in /mnt/hgfs/newgrain/FH8620/62_demo_15_follow/rt-thread/kernel/components/net/lwip-1.4.1/src/api/sockets.c, thread tcp_server_task
Execption:
r00:0x60000013 r01:0xa02a0328 r02:0x0000014b r03:0x00000000
r04:0x00000000 r05:0x00000000 r06:0x00000000 r07:0x00000000
r08:0x00000000 r09:0x00000000 r10:0x00000000
fp :0xa02ded34 ip :0xa009e790
sp :0xa02decb8 lr :0xa003f084 pc :0xa003bc50
cpsr:0x600000d3
data abort
thread - tcp_server_task stack:
thread           pri  status      sp     stack size max used   left tick  error
------           ---- ------- ---------- ---------- ---------- ---------- ---
CoolviewTh       0x85 suspend 0x00000178 0x00000800 0x0000028d 0x00000012 000
telnet           0x19 suspend 0x000000c8 0x00000200 0x000001a0 0x00000003 000
getstreamer_serv 0x97 ready   0x000001d0 0x00008000 0x000003ad 0x0000000f -02
recording_server 0x98 ready   0x00000098 0x00001000 0x000000d0 0x00000006 -02
get_drone_data_t 0x97 ready   0x000000a0 0x00000800 0x000000f0 0x0000000f -02
mkqp_communicati 0x96 suspend 0x00000228 0x00008000 0x000002a0 0x00000011 000
SdcMonitor_task  0x95 suspend 0x000000b8 0x00002800 0x000000b8 0x00000014 000
communication_ta 0xbd ready   0x00000228 0x00000800 0x000002e0 0x00000011 -02
_udpserver_send  0x9a ready   0x00000110 0x00001000 0x00000118 0x00000006 -02
test_frame_rate  0x95 suspend 0x000000a8 0x00000800 0x000002d0 0x00000014 000
tcp_server_task  0x96 ready   0x00001478 0x00008000 0x00001560 0x00000013 000
netif_task       0x17 suspend 0x000000d0 0x00001000 0x00000164 0x00000002 000
wlcmgr           0x18 suspend 0x000000d0 0x00000800 0x0000040d 0x00000002 000
wifi_driver      0x15 suspend 0x000000d0 0x00000800 0x00000144 0x00000001 000
TimerManager     0x89 suspend 0x000000d0 0x00000800 0x000003a8 0x00000003 000
isp_run          0x95 suspend 0x000000a8 0x00000800 0x00000490 0x0000000f 000
etx              0x7e suspend 0x000000a0 0x00000400 0x000000a0 0x00000010 000
erx              0x7e suspend 0x000000a8 0x00000400 0x000000a8 0x00000010 000
tcpip            0x64 suspend 0x000000e8 0x00002000 0x000004fd 0x00000002 000
mmcsd_detect     0x40 suspend 0x000000a8 0x00000400 0x00000220 0x00000002 000
tidle            0xff ready   0x00000050 0x00000400 0x00000078 0x00000020 000
timer            0x08 suspend 0x00000078 0x00000200 0x00000078 0x00000009 000
tshell           0x14 suspend 0x000000a8 0x00001000 0x00000244 0x00000007 000
init             0x50 suspend 0x000000a8 0x00002800 0x00000a90 0x0000000d 000

```

list_tcps()
Active PCB states:
#0 172.16.10.1:23 <==> 172.16.10.166:41668 snd_nxt 0x00002C02 rcv_nxt 0x5C56411B state: ESTABLISHED
Listen PCB states:
#0 local port 23 state: LISTEN
#1 local port 8620 state: LISTEN
#2 local port 8888 state: LISTEN


# ```finsh``` probing:



http://yesuserserviceableparts.blogspot.com/2017/05/

    finsh>>list()
    --Function List:
    exec             -- exec module from a file
    list_memlist     -- list module free memory information
    list_mempage     -- list module using memory page information
    list_mem         -- list memory usage information
    mkfs             -- make a file system
    df               -- get disk free
    mount            -- mount a file system
    unmount          -- unmount a file system
    ls               -- list directory contents
    rm               -- remove files or directories
    cat              -- print file
    copy             -- copy file or dir
    mkdir            -- create a directory
    hello            -- say hello world
    version          -- show RT-Thread version information
    list_thread      -- list thread
    list_sem         -- list semaphone in system
    list_event       -- list event in system
    list_mutex       -- list mutex in system
    list_mailbox     -- list mail box in system
    list_msgqueue    -- list message queue in system
    list_memheap     -- list memory heap in system
    list_mempool     -- list memory pool in system
    list_timer       -- list timer in system
    list_device      -- list device in system
    list_module      -- list module in system
    list_mod_detail  -- list module objects in system
    list             -- list all symbol in system
    set_if           -- set network interface address
    list_if          -- list network interface information
    list_tcps        -- list all of tcp connections
    list_irq         -- list system irq
    i2c_test_sensor  -- sensor i2c test
    wdt_start        -- enable wdt
    isp_read_proc    -- read proc info
    media_mem_proc   -- media mem use info.e.g : media_mem_proc()
    jpeg_write_proc  -- write jpeg proc info
    jpeg_read_proc   -- read jpeg proc info
    media_read_proc  -- get media process proc info
    enc_write_proc   -- write enc proc info
    enc_read_proc    -- read enc proc info
    vou_write_proc   -- write vou proc info
    vou_read_proc    -- read vou proc info
    vpu_write_proc   -- write vpu proc info
    vpu_read_proc    -- read vpu proc info
    cmm_mem_proc     -- reserved mem use info.e.g : cmm_mem_proc(index)
    sadc_demo_main   -- sadc_demo_main()
    iperf            -- iperf("serverip", port)
    ping             -- ping network host
    telnet_srv       -- startup telnet server
    reset            -- system reset
    --Variable List:
    dummy            -- dummy variable for finsh
    rt_time_zone     -- timezone value


    finsh>>list_thread()
    thread           pri  status      sp     stack size max used   left tick  error
    ------           ---- ------- ---------- ---------- ---------- ---------- ---
    CoolviewTh       0x85 suspend 0x00000178 0x00000800 0x0000028d 0x00000010 000
    telnet           0x19 ready   0x000000f0 0x00000200 0x000001a0 0x00000005 000
    getstreamer_serv 0x97 suspend 0x000001d0 0x00008000 0x000003ad 0x0000000c -02
    recording_server 0x98 ready   0x000000b8 0x00001000 0x000000f0 0x00000003 -02
    get_drone_data_t 0x97 suspend 0x000000c0 0x00000800 0x000000d8 0x0000000b 000
    mkqp_communicati 0x96 suspend 0x00000228 0x00008000 0x000002a0 0x0000000f 000
    SdcMonitor_task  0x95 suspend 0x000000b8 0x00002800 0x000000b8 0x00000014 000
    communication_ta 0xbd suspend 0x00000228 0x00000800 0x000002e0 0x00000012 000
    _udpserver_send  0x9a ready   0x00000110 0x00001000 0x00000110 0x0000000b -02
    test_frame_rate  0x95 suspend 0x000000a8 0x00000800 0x000002d0 0x00000010 000
    tcp_server_task  0x96 suspend 0x000013e8 0x00008000 0x00001460 0x00000013 000
    netif_task       0x17 suspend 0x000000d0 0x00001000 0x00000164 0x00000001 000
    wlcmgr           0x18 suspend 0x000000d0 0x00000800 0x0000040d 0x00000001 000
    wifi_driver      0x15 suspend 0x000000d0 0x00000800 0x00000144 0x00000001 000
    TimerManager     0x89 ready   0x000000d0 0x00000800 0x000003a8 0x00000014 -02
    isp_run          0x95 suspend 0x000000a8 0x00000800 0x00000490 0x00000010 000
    etx              0x7e suspend 0x000000a0 0x00000400 0x000000a0 0x00000010 000
    erx              0x7e suspend 0x000000a8 0x00000400 0x000000a8 0x00000010 000
    tcpip            0x64 ready   0x000000b8 0x00002000 0x000004fd 0x00000011 000
    mmcsd_detect     0x40 suspend 0x000000a8 0x00000400 0x00000220 0x00000002 000
    tidle            0xff ready   0x00000078 0x00000400 0x00000078 0x00000005 000
    timer            0x08 suspend 0x00000078 0x00000200 0x00000078 0x00000009 000
    tshell           0x14 ready   0x000000a8 0x00001000 0x00000248 0x00000009 000
    init             0x50 suspend 0x000000a8 0x00002800 0x00000a90 0x0000000f 000
    
    finsh>>list_device()
    device           type                 ref count 
    ------           -------------------- ----------
    telnet           Character Device     2       
    ISP              Character Device     1       
    vou              Character Device     1       
    jpeg             Character Device     1       
    vpu              Character Device     1       
    enc              Character Device     1       
    media            Character Device     1       
    sadc             Miscellaneous Device 0       
    flash.uboot      Block Device         0       
    flash.uboot-env  Block Device         0       
    flash.bootstrap  Block Device         0       
    fh_flash         Block Device         0       
    ssi0_1           SPI Device           0       
    ssi0_0           SPI Device           0       
    spi_bus0         SPI Bus              0       
    fh_wdt           Miscellaneous Device 0       
    pwm              Miscellaneous Device 0       
    i2c1             I2C Bus              0       
    i2c0             I2C Bus              0       
    audio            Sound Device         0       
    fh81_dma         Miscellaneous Device 0       
    sd0              Block Device         1       
    console          Character Device     3       
    uart1            Character Device     0       
    uart0            Character Device     0       

    finsh>>list_if()
    network interface: ap (Default)
    MTU: 1500
    MAC: ec 3d fd xx xx xx 
    FLAGS: UP LINK_UP ETHARP IGMP
    ip address: 172.16.10.1
    gw address: 172.16.10.1
    net mask  : 255.255.255.0
    