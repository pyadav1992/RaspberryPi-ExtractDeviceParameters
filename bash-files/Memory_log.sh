###############################################################################
#Name: Pratik Yadav
#Project: Raspberry Pi 2 - Gather device parameter in a text file and report
#Description: Write meminfo in Memory_log.txt file 
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
while(sleep 5);
do 
  # cat /proc/meminfo | grep 'MemTotal:' >  /home/pi/logs/Memory_log.txt;
   temp1=`cat /proc/meminfo | grep 'MemTotal:'`;
   temp1=${temp1:12}
   echo $temp1 >  /home/pi/logs/Memory_log.txt;
  # cat /proc/meminfo | grep 'MemFree:'  >> /home/pi/logs/Memory_log.txt;
   temp2=`cat /proc/meminfo | grep 'MemFree:'`;
   temp2=${temp2:12}
   echo $temp2 >>  /home/pi/logs/Memory_log.txt;
 #  cat /proc/meminfo | grep 'MemAvailable:'  >> /home/pi/logs/Memory_log.txt;
   temp3=`cat /proc/meminfo | grep 'MemAvailable:'`;
   temp3=${temp3:14}
   echo $temp3 >>  /home/pi/logs/Memory_log.txt;

done
