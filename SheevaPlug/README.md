# SheevaPlug

c 2009(?).

Used as a home 'server', HVAC IoT controller (Via HTTP & POP3)

```
> /dev/serial
> /dev/serial/by-path
> /dev/serial/by-path/pci-0000:00:14.0-usb-0:1:1.1-port0
> /dev/serial/by-id
> /dev/serial/by-id/usb-FTDI_SheevaPlug_JTAGKey_FT2232D_B_FTSFE6XP-if01-port0
> /dev/ttyUSB0
> /dev/vboxusb/003
> /dev/vboxusb/003/002
> /dev/char/188:0
> /dev/char/189:257
> /dev/bus/usb/003/002
> Bus 003 Device 002: ID 9e88:9e8f Marvell Semiconductor, Inc. Plug Computer Basic [SheevaPlug]
> Device Descriptor:
>   bLength                18
>   bDescriptorType         1
>   bcdUSB               2.00
>   bDeviceClass            0 (Defined at Interface level)
>   bDeviceSubClass         0 
>   bDeviceProtocol         0 
>   bMaxPacketSize0         8
>   idVendor           0x9e88 Marvell Semiconductor, Inc.
>   idProduct          0x9e8f Plug Computer Basic [SheevaPlug]
>   bcdDevice            5.00
>   iManufacturer           1 FTDI
>   iProduct                2 SheevaPlug JTAGKey FT2232D B
>   iSerial                 3 FTSFE6XP
>   bNumConfigurations      1
>   Configuration Descriptor:
>     bLength                 9
>     bDescriptorType         2
>     wTotalLength           55
>     bNumInterfaces          2
>     bConfigurationValue     1
>     iConfiguration          0 
>     bmAttributes         0x80
>       (Bus Powered)
>     MaxPower              100mA
>     Interface Descriptor:
>       bLength                 9
>       bDescriptorType         4
>       bInterfaceNumber        0
>       bAlternateSetting       0
>       bNumEndpoints           2
>       bInterfaceClass       255 Vendor Specific Class
>       bInterfaceSubClass    255 Vendor Specific Subclass
>       bInterfaceProtocol    255 Vendor Specific Protocol
>       iInterface              2 SheevaPlug JTAGKey FT2232D B
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x81  EP 1 IN
>         bmAttributes            2
>           Transfer Type            Bulk
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0040  1x 64 bytes
>         bInterval               0
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x02  EP 2 OUT
>         bmAttributes            2
>           Transfer Type            Bulk
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0040  1x 64 bytes
>         bInterval               0
>     Interface Descriptor:
>       bLength                 9
>       bDescriptorType         4
>       bInterfaceNumber        1
>       bAlternateSetting       0
>       bNumEndpoints           2
>       bInterfaceClass       255 Vendor Specific Class
>       bInterfaceSubClass    255 Vendor Specific Subclass
>       bInterfaceProtocol    255 Vendor Specific Protocol
>       iInterface              2 SheevaPlug JTAGKey FT2232D B
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x83  EP 3 IN
>         bmAttributes            2
>           Transfer Type            Bulk
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0040  1x 64 bytes
>         bInterval               0
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x04  EP 4 OUT
>         bmAttributes            2
>           Transfer Type            Bulk
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0040  1x 64 bytes
>         bInterval               0
> Device Status:     0x0000
>   (Bus Powered)
> 
>    Port 1: 0000.0103 power enable connect
```
