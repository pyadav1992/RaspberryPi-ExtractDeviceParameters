/*************************************************************************
** @source air_sync.c
**
**
** @author Copyright (C) 2021  Pratik Yadav
** @description: Parse text files to extract temperature, version, memory,
**               MAC, CPU utilization
**  This program is free software: you can redistribute it and/or modify
**  it under the terms of the GNU General Public License as published by
**  the Free Software Foundation, either version 3 of the License, or
**  (at your option) any later version.
**
**  This program is distributed in the hope that it will be useful,
**  but WITHOUT ANY WARRANTY; without even the implied warranty of
**  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
**  GNU General Public License for more details.
**
**  You should have received a copy of the GNU General Public License
**  along with this program.  
**  If not, see <https://www.gnu.org/licenses/>
*************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main()
{
	FILE *file1 = fopen("//home//pi//logs//temp_log.txt","r");
	FILE *file2 = fopen("//home//pi//logs//version_log.txt","r");
	FILE *file3 = fopen("//home//pi//logs//Memory_log.txt","r");
	FILE *file4 = fopen("//home//pi//logs//MAC_IP.txt","r");
	FILE *file5 = fopen("//home//pi//logs//CPU_Usage_log.txt","r");
	
	char temp[10][1000],ver[10][1000],mem[10][1000],MAC[10][1000],CPU[1000];
	int i,j,k,l,m,n;
	float CPU_Usage,num;
	num = 100;
	i = 0;
	j = 0;
	k = 0;
	l = 0;
	m = 0;
	n = 0;
	
	fgets(CPU,1000,file5);
	
	while(i<5)
	{
		fgets(temp[i],1000,file1);
		fgets(ver[i],1000,file2);
		fgets(mem[i],1000,file3);
		fgets(MAC[i],1000,file4);
		i++;	
	}

	CPU_Usage = atof(CPU);
	CPU_Usage = num - CPU_Usage;

	while(j<1)
	{
		puts(temp[j]);
		j++;	
	}
	while(k<1)
	{
		puts(ver[k]);
		k++;	
	}
	while(l<3)
	{
		puts(mem[l]);
		l++;	
	}
	while(m<4)
	{
		puts(MAC[m]);
		m++;	
	}
	printf("%f",CPU_Usage);
		

	fclose(file1);
	fclose(file2);
	fclose(file3);
	fclose(file4);
	fclose(file5);

	return 0;
}



