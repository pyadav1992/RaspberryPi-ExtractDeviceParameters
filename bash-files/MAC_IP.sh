###############################################################################
#Name: Pratik Yadav
#Project: Raspberry Pi 2 - Gather device parameter in a text file and report
#Description: Write Hwaddr, inet addr in MAC_IP.txt file 
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  
#  If not, see <https://www.gnu.org/licenses/>
###############################################################################
#!/bin/bash

temp1=`ifconfig | grep 'HWaddr '`
temp1=${temp1:37} 
echo $temp1 > /home/pi/logs/MAC_IP.txt

temp2=`ifconfig | grep 'inet addr:'`
temp2=${temp2:20:13} 
echo $temp2 >> /home/pi/logs/MAC_IP.txt

temp3=`ifconfig | grep 'inet addr:'`
temp3=${temp3:41:13} 
echo $temp3 >> /home/pi/logs/MAC_IP.txt

temp4=`ifconfig | grep 'inet addr:'`
temp4=${temp4:61:13} 
echo $temp4 >> /home/pi/logs/MAC_IP.txt

