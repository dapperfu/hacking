
# Controller Prober

Controller is an Arduino Nano clone on a custom PCB with 2 stepper drivers (X & Y).

Instructions only show a Windows only program for 'engraving' pictures.

Goal: Figure out what the board is running & how to use it with Python.


```python
import serial
from time import sleep
```

## 1. Baud Rate

How fast are we talking?


```python
baudrates = [1200, 2400, 4800, 9600, 19200, 38400, 57600, 115200]
```


```python
for baudrate in baudrates:
    with serial.Serial(
        port='/dev/ttyUSB0',
        baudrate=baudrate,
        bytesize=serial.EIGHTBITS,
        parity=serial.PARITY_NONE,
        stopbits=serial.STOPBITS_ONE,
        timeout=1,
        xonxoff=0,
        rtscts=0
    ) as arduino:
        # Toggle DTR to reset Arduino
        arduino.setDTR(False)
        sleep(2)
        print("{}: {}".format(baudrate, arduino.read_all()))
```

    1200: b'\xfc'
    2400: b'\xd4'
    4800: b'\xd0\xed'
    9600: b'>\x83)\xee'
    19200: b'Ib\xc6R\xd3RS\xff'
    38400: b'\xd4\xba\x98\x08b\xc6\x93\xc5\x80\xb0\xafP\xb9\xf3'
    57600: b'\xbc\x8d\x0e\x9d!!9L\x84\rJ\xbdH\x0e\x8a\xd8\x9f\xee\x8c\xcc'
    115200: b'benbox laser 3.1(c) mul 2015.06.06\r\nstart\r\nok\r\n'


## 2. Dialect

What are we talking?


```python
try:
    # If we're already executed this cell before, close the serial port first.
    ser.close()
except:
    pass

cfg = {
    "port": '/dev/ttyUSB0',
    "baudrate": 115200,
    "bytesize": serial.EIGHTBITS,
    "parity": serial.PARITY_NONE,
    "stopbits": serial.STOPBITS_ONE,
    "timeout": 10,
    "xonxoff": 0,
    "rtscts": 0,
}
ser = serial.Serial(**cfg)
ser.setDTR(False)
sleep(2)
ser.read_all()
```




    b'benbox laser 3.1(c) mul 2015.06.06\r\nstart\r\nok\r\n'




```python
ser.write(b"\n\n")
ser.read_all()
```




    b''




```python
ser.write(b"$$\n")
ser.read_all()
```




    b''




```python
ser.write(b"$$\r\n")
ser.read_all()
```




    b'ok\r\nok\r\n'




```python
ser.write(b"help\r\n")
ser.read_all()
```




    b'ok\r\n'




```python
ser.write(b"help\r\n")
sleep(5)
ser.read_all()
```




    b'ok\r\n'



## 3. More Probing.


```python
# Create a class to make it easy to add features.
class Benbox(serial.Serial):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
```


```python
try:
    # If we're already executed this cell before, close the serial port first.
    ser.close()
except:
    pass

cfg = {
    "port": '/dev/ttyUSB0',
    "baudrate": 115200,
    "bytesize": serial.EIGHTBITS,
    "parity": serial.PARITY_NONE,
    "stopbits": serial.STOPBITS_ONE,
    "timeout": 10,
    "xonxoff": 0,
    "rtscts": 0,
}
ser = Benbox(**cfg)
ser.setDTR(False)
sleep(2)
ser.read_all()
```




    b'benbox laser 3.1(c) mul 2015.06.06\r\nstart\r\nok\r\n'




```python
ser.write("$$\r\n".encode("UTF-8"))
ser.read(size=8192)
```




    b'ok\r\n'




```python
ser.write("$#\r\n".encode("UTF-8"))
ser.read(size=8192)
```

Doesn't respond to GRBL commands...
