# Vivitar IPC113

[Menards: Vivitar 1080p HD Wi-Fi Wireless Security Camera](https://www.menards.com/main/mcom/electrical/alarms-security-systems/security-cameras/vivitar-1080p-hd-wi-fi-wireless-security-camera/ipc113-wht-men/p-1518247867092.htm)

Open Ports:

	Not shown: 996 closed ports
	PORT     STATE SERVICE
	23/tcp   open  telnet
	80/tcp   open  http
	554/tcp  open  rtsp
	8001/tcp open  vcom-tunnel
	
curl -vvvv http://10.0.2.182
* Rebuilt URL to: http://10.0.2.182/
*   Trying 10.0.2.182...
* TCP_NODELAY set
* Connected to 10.0.2.182 (10.0.2.182) port 80 (#0)
> GET / HTTP/1.1
> Host: 10.0.2.182
> User-Agent: curl/7.58.0
> Accept: */*
> 
< HTTP/1.1 301 Moved Permanently
< Server: TAS-Tech IPCam
< Date: Mon, 12 Aug 118 02:43:11 GMT
< Location: http://10.0.2.182:8001/
< Connection: close

< 
* Closing connection 0
<html><body><h1>Port 80 will not been used.</h1><hr>Click here: <a href="http://10.0.2.182:8001/">http://10.0.2.182:8001/</a></body></html>

