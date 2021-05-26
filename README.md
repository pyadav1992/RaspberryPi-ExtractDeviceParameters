# RaspberryPi-ExtractDeviceParameters
Porting middleware agent code on a Raspberry Pi-2 kit that registers the device on a cloud portal and helps transmit device's statistical health and information parameters.

– Flashed a Raspberry Pi-2 module with Proximtery's middleware agent code and verify that the module is successfully registered on the Proximetry's cloud server.
– A Linux bash program was developed that queried the statistical health and information data (MAC address, IP address, firmware version, temperature, memory usage, and CPU usage) of the raspberry pi-2 module and stored it in a text file.
– Developed a C programming application that parsed this text file and periodically transmitted the stored information to the Proximetry's cloud server using Wifi.

NOTE: Middleware source code not included (proprietary)
