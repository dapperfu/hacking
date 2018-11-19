# Laser Cutting Frame 65x50cm

[100mw-5500mw 65x50cm DIY Desktop Mini Laser Cutting/Engraving Engraver Machine DC 12V Wood Cutter/Printer/Power Adjustable](https://www.aliexpress.com/item/100mw-5500mw-65x50cm-DIY-Desktop-Mini-Laser-Cutting-Engraving-Engraver-Machine-DC-12V-Wood-Cutter-Printer/32919557189.html?spm=a2g0s.12269583.0.0.154656fdxPplGz) [archive.is](http://archive.is/Xyt6H)

- Ordered: Nov. 11 2018
- Arrived: Nov 17, 2018
- Price: $ 103.22

# Reverse Engineering.

Like all things Aliexpress, no instructions for everything.

## Bill of Materials

Or at least this is what was in the box.

- Frame Parts
  - Extruded Aluminum T-Slot Profile(?)
    - 2x 20mmx20mmx680mm Side Rails (X-axis)
    - 2x 20mmx40mmx728mm Side Rails (Y-axis) - Tapped 2x on each end
    - 1x 20mmx40mmx629mm Gantry (X-axis) - Tapped 2x on each end
  - 4x Corner Brackets
  - Polycarbonate Parts
    - 4x Legs. 7.6mm thick
    - 2x Side Roller/Motor Support/Gantry Support. 7.6mm thick
    - 1x Gantry Head Front. 4.7mm thick
    - 1x Gantry Head Back. 4.7mm thick
    - 1x Laser Module Support. 4.7mm thick
- Timing Belts
  - 1x 835mm (X-axis)
  - 2x 720mm (Y-axis)
- Hardware
  - Socket Head Cap Screws
    - 10x M6x14mm
    - 11x M5x30mm
    - 6x M5x40mm
    - 1x M5x16mm
  - Phillips Pan Head Screws
    - 5x M3x15mm
    - 9x M3x8mm
    - 14x M3x7mm
  - Hex Nuts
    - 6x M3
    - 25x M5
  - Nylon Spacers
    - 6x 3.0mm - 3.3mm ID, 6.8mm OD
    - 7x 11.8mm - 5.0mm ID, 8.8mm OD
    - 15x 10.0mm - 5.0mm ID, 8.8mm OD
  - 15x Wheels - 5mm ID, 21.4mm OD, 7mm thick

## Controller


```dmesg```:

```
new full-speed USB device number 126 using xhci_hcd
New USB device found, idVendor=1a86, idProduct=7523
New USB device strings: Mfr=0, Product=2, SerialNumber=0
Product: USB2.0-Serial
```

```lsusb```:

```
Bus 003 Device 127: ID 1a86:7523 QinHeng Electronics HL-340 USB-Serial adapter
```

See also [controller_prober.md](controller_prober.md) for probing the software.