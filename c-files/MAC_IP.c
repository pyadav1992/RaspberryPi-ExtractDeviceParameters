/*************************************************************************
** @source MAC_IP.c
**
**
** @author Copyright (C) 2021  Pratik Yadav
** @description: Parse text files to extract IP
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

	FILE *file4 = fopen("//home//pi//logs//MAC_IP.txt","r");
	char MAC_IP[10][1000];
	int k,l;
	k = 0;
	l = 0;
	while(k<5)
	{
		fgets(MAC_IP[k],1000,file4);
		k++;	
	}

	printf("%s",MAC_IP[0]);
	printf("%s",MAC_IP[1]);
		
	fclose(file4);

	return 0;
}


