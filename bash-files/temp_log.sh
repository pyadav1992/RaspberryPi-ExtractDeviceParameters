###############################################################################
#Name: Pratik Yadav
#Project: Raspberry Pi 2 - Gather device parameter in a text file and report
#Description: Write temperature in temp_log.txt file 
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
temp1=`/opt/vc/bin/vcgencmd measure_temp`;
temp1=${temp1:5:4};
echo $temp1  > /home/pi/logs/temp_log.txt;	
done
