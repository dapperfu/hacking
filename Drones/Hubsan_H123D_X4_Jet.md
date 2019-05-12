# Hubsan H123D X4 Jet Racing Drone

[$175.00 - 2019Q](https://www.amazon.com/gp/product/B07FNLB1MX/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1)

Linux Probe:

```
1a2
> /dev/hidraw2
37a39
> /dev/vboxusb/003/006
272a275,277
> /dev/char/13:85
> /dev/char/240:2
> /dev/char/189:261
528a534
> /dev/input/event21
542a549
> /dev/input/by-id/usb-STMicroelectronics_STM32_Joystick_3AC48D72FFFF-event-if00
551a559
> /dev/input/by-path/pci-0000:00:14.0-usb-0:1:1.0-event
574a583
> /dev/bus/usb/003/006
1959a1969,2039
> Bus 003 Device 006: ID 1013:2628 TST-Touchless Sensor Technology AG 
> Device Descriptor:
>   bLength                18
>   bDescriptorType         1
>   bcdUSB               2.00
>   bDeviceClass            0 (Defined at Interface level)
>   bDeviceSubClass         0 
>   bDeviceProtocol         0 
>   bMaxPacketSize0        64
>   idVendor           0x1013 TST-Touchless Sensor Technology AG
>   idProduct          0x2628 
>   bcdDevice            2.00
>   iManufacturer           1 STMicroelectronics
>   iProduct                2 STM32 Joystick
>   iSerial                 3 3AC48D72FFFF
>   bNumConfigurations      1
>   Configuration Descriptor:
>     bLength                 9
>     bDescriptorType         2
>     wTotalLength           41
>     bNumInterfaces          1
>     bConfigurationValue     1
>     iConfiguration          0 
>     bmAttributes         0xe0
>       Self Powered
>       Remote Wakeup
>     MaxPower              100mA
>     Interface Descriptor:
>       bLength                 9
>       bDescriptorType         4
>       bInterfaceNumber        0
>       bAlternateSetting       0
>       bNumEndpoints           2
>       bInterfaceClass         3 Human Interface Device
>       bInterfaceSubClass      0 No Subclass
>       bInterfaceProtocol      0 None
>       iInterface              0 
>         HID Device Descriptor:
>           bLength                 9
>           bDescriptorType        33
>           bcdHID               1.00
>           bCountryCode            0 Not supported
>           bNumDescriptors         1
>           bDescriptorType        34 Report
>           wDescriptorLength      35
>          Report Descriptors: 
>            ** UNAVAILABLE **
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x81  EP 1 IN
>         bmAttributes            3
>           Transfer Type            Interrupt
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0040  1x 64 bytes
>         bInterval               1
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x02  EP 2 OUT
>         bmAttributes            3
>           Transfer Type            Interrupt
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0040  1x 64 bytes
>         bInterval               1
> Device Status:     0x0003
>   Self Powered
>   Remote Wakeup Enabled
> 
```