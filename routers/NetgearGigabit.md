# Through Power Line Adapters

## iperf

$ iperf --bind 10.0.2.213 --client 10.0.0.5
------------------------------------------------------------
Client connecting to 10.0.0.5, TCP port 5001
Binding to local address 10.0.2.213
TCP window size: 85.0 KByte (default)
------------------------------------------------------------
[  3] local 10.0.2.213 port 51645 connected with 10.0.0.5 port 5001
[ ID] Interval       Transfer     Bandwidth
[  3]  0.0-10.0 sec   426 MBytes   357 Mbits/sec

3: wlp11s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1412 qdisc noqueue state UP group default qlen 1000
    link/ether 6c:71:d9:0e:9f:11 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.213/22 brd 10.0.3.255 scope global dynamic noprefixroute wlp11s0

iperf --bind 192.168.1.171 --client 10.0.0.5
------------------------------------------------------------
Client connecting to 10.0.0.5, TCP port 5001
Binding to local address 192.168.1.171
TCP window size: 85.0 KByte (default)
------------------------------------------------------------
[  3] local 192.168.1.171 port 35421 connected with 10.0.0.5 port 5001
.[ ID] Interval       Transfer     Bandwidth
[  3]  0.0-10.0 sec  76.0 MBytes  63.6 Mbits/sec

4: wlp2s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 30:24:32:9d:8e:a6 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.171/24 brd 192.168.1.255 scope global dynamic noprefixroute wlp2s0
       valid_lft 82318sec preferred_lft 82318sec
    inet6 fe80::2674:4de7:cb55:4f63/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
$ iperf --bind 10.0.2.102 --client 10.0.0.5
------------------------------------------------------------
Client connecting to 10.0.0.5, TCP port 5001
Binding to local address 10.0.2.102
TCP window size: 85.0 KByte (default)
------------------------------------------------------------
[  3] local 10.0.2.102 port 37853 connected with 10.0.0.5 port 5001
[ ID] Interval       Transfer     Bandwidth
[  3]  0.0-10.0 sec   469 MBytes   393 Mbits/sec

2: eno1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc fq_codel state UP group default qlen 1000
    link/ether b8:ca:3a:c6:6f:93 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.102/22 brd 10.0.3.255 scope global dynamic noprefixroute eno1

## iperf3

$ iperf3 --bind 10.0.2.213 --client 10.0.0.5
Connecting to host 10.0.0.5, port 5201
[  4] local 10.0.2.213 port 54099 connected to 10.0.0.5 port 5201
[ ID] Interval           Transfer     Bandwidth       Retr  Cwnd
[  4]   0.00-1.00   sec  39.0 MBytes   327 Mbits/sec    0    643 KBytes       
[  4]   1.00-2.00   sec  42.2 MBytes   354 Mbits/sec    0    643 KBytes       
[  4]   2.00-3.00   sec  41.7 MBytes   350 Mbits/sec    0    643 KBytes       
[  4]   3.00-4.00   sec  41.5 MBytes   348 Mbits/sec    0    676 KBytes       
[  4]   4.00-5.00   sec  42.2 MBytes   354 Mbits/sec    0    676 KBytes       
[  4]   5.00-6.00   sec  41.7 MBytes   350 Mbits/sec    0    676 KBytes       
[  4]   6.00-7.00   sec  41.2 MBytes   346 Mbits/sec    0    676 KBytes       
[  4]   7.00-8.00   sec  42.5 MBytes   356 Mbits/sec    0    676 KBytes       
[  4]   8.00-9.00   sec  42.5 MBytes   356 Mbits/sec    0    676 KBytes       
[  4]   9.00-10.00  sec  41.2 MBytes   346 Mbits/sec    0    676 KBytes       
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-10.00  sec   416 MBytes   349 Mbits/sec    0             sender
[  4]   0.00-10.00  sec   412 MBytes   346 Mbits/sec                  receiver

## Wifi2 - Intel C216

$ iperf3 --bind 10.0.2.166 --client 10.0.0.5
Connecting to host 10.0.0.5, port 5201
[  4] local 10.0.2.166 port 42123 connected to 10.0.0.5 port 5201
[ ID] Interval           Transfer     Bandwidth       Retr  Cwnd
[  4]   0.00-1.00   sec  39.9 MBytes   335 Mbits/sec    0    648 KBytes       
[  4]   1.00-2.00   sec  47.1 MBytes   395 Mbits/sec    0    648 KBytes       
[  4]   2.00-3.00   sec  47.0 MBytes   394 Mbits/sec    0    648 KBytes       
[  4]   3.00-4.00   sec  47.2 MBytes   396 Mbits/sec    0    648 KBytes       
[  4]   4.00-5.00   sec  47.5 MBytes   398 Mbits/sec    0    648 KBytes       
[  4]   5.00-6.00   sec  47.3 MBytes   397 Mbits/sec    0    648 KBytes       
[  4]   6.00-7.00   sec  47.4 MBytes   398 Mbits/sec    0    648 KBytes       
[  4]   7.00-8.00   sec  47.6 MBytes   399 Mbits/sec    0    648 KBytes       
[  4]   8.00-9.00   sec  47.0 MBytes   395 Mbits/sec    0    648 KBytes       
[  4]   9.00-10.00  sec  47.5 MBytes   398 Mbits/sec    0    648 KBytes       
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-10.00  sec   465 MBytes   390 Mbits/sec    0             sender
[  4]   0.00-10.00  sec   462 MBytes   388 Mbits/sec                  receiver



3: wlp11s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1412 qdisc noqueue state UP group default qlen 1000
    link/ether 6c:71:d9:0e:9f:11 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.213/22 brd 10.0.3.255 scope global dynamic noprefixroute wlp11s0
       valid_lft 82040sec preferred_lft 82040sec
    inet6 fe80::93bd:a6ea:e113:cc70/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever

~$ iperf3 --bind 10.0.2.102 --client 10.0.0.5
Connecting to host 10.0.0.5, port 5201
[  4] local 10.0.2.102 port 42121 connected to 10.0.0.5 port 5201
[ ID] Interval           Transfer     Bandwidth       Retr  Cwnd
[  4]   0.00-1.00   sec  45.4 MBytes   381 Mbits/sec    0    672 KBytes       
[  4]   1.00-2.00   sec  47.2 MBytes   396 Mbits/sec    0    672 KBytes       
[  4]   2.00-3.00   sec  47.7 MBytes   400 Mbits/sec    0    672 KBytes       
[  4]   3.00-4.00   sec  48.3 MBytes   405 Mbits/sec    0    672 KBytes       
[  4]   4.00-5.00   sec  48.4 MBytes   406 Mbits/sec    1    672 KBytes       
[  4]   5.00-6.00   sec  47.5 MBytes   398 Mbits/sec    0    672 KBytes       
[  4]   6.00-7.00   sec  47.5 MBytes   398 Mbits/sec    0    672 KBytes       
[  4]   7.00-8.00   sec  47.8 MBytes   401 Mbits/sec    0    672 KBytes       
[  4]   8.00-9.00   sec  48.3 MBytes   405 Mbits/sec    0    672 KBytes       
[  4]   9.00-10.00  sec  47.5 MBytes   398 Mbits/sec    0    672 KBytes       
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-10.00  sec   476 MBytes   399 Mbits/sec    1             sender
[  4]   0.00-10.00  sec   472 MBytes   396 Mbits/sec                  receiver

iperf Done.

# Directly connectd.

:~$ iperf3 --bind 10.0.2.102 --client 10.0.0.5
Connecting to host 10.0.0.5, port 5201
[  4] local 10.0.2.102 port 38671 connected to 10.0.0.5 port 5201
[ ID] Interval           Transfer     Bandwidth       Retr  Cwnd
[  4]   0.00-1.00   sec  87.9 MBytes   738 Mbits/sec  1083    810 KBytes       
[  4]   1.00-2.00   sec  85.6 MBytes   718 Mbits/sec    1    885 KBytes       
[  4]   2.00-3.00   sec  84.9 MBytes   713 Mbits/sec    0    938 KBytes       
[  4]   3.00-4.00   sec  85.3 MBytes   715 Mbits/sec    0   1005 KBytes       
[  4]   4.00-5.00   sec  82.6 MBytes   693 Mbits/sec    1   1.03 MBytes       
[  4]   5.00-6.00   sec  85.5 MBytes   717 Mbits/sec    1   1.09 MBytes       
[  4]   6.00-7.00   sec  85.5 MBytes   717 Mbits/sec    1   1.14 MBytes       
[  4]   7.00-8.00   sec  84.5 MBytes   709 Mbits/sec    0   1.19 MBytes       
[  4]   8.00-9.00   sec  85.6 MBytes   718 Mbits/sec    0   1.24 MBytes       
[  4]   9.00-10.00  sec  84.8 MBytes   711 Mbits/sec    0   1.29 MBytes       
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-10.00  sec   852 MBytes   715 Mbits/sec  1087             sender
[  4]   0.00-10.00  sec   848 MBytes   712 Mbits/sec                  receiver


