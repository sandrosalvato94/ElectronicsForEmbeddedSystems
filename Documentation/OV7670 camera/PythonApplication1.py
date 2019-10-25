import csv
import sys
import binascii

import serial

#ser = serial.Serial("COM18", 115200, 8, "N", 1, timeout=0)
#ser.open()


#headers =['42','4D','36','84','03','00','00','00','00','00','36','00','00','00','28','00','00','00',
#'02','80','00','00','F0','00','00','00','01','00','18','00','00','00','00','00','00','84','03','00','C5','00',
#'00','00','C5','00','00','00','00','00','00','00','00','00','00','00']
#dati = ser.read(78000)
#print(dati)





csv.field_size_limit(500 * 1024 * 1024)
 
columnvector = []
with open('data.csv','rt',encoding='utf-8') as csvfile:
    csvreader = csv.reader(csvfile,delimiter=',', quotechar=',')
    for row in csvreader:
        columnvector.append(row)
headers =['42','4D','36','84','03','00','00','00','00','00','36','00','00','00','28','00','00','00',
'80','02','00','00','78','00','00','00','01','00','18','00','00','00','00','00','00','84','03','00','C5','00',
'00','00','C5','00','00','00','00','00','00','00','00','00','00','00']
 
#print(len(columnvector[0]).__str__())
hexArray = []
#for i in range(0,76800):
for i in range(0,76800):
	data = columnvector[0][i]
	
	#print(i.__str__() + "," + data.__str__())
	
	#red = data[]
	
	red = data
	green = data
	blue = data
	#green = data.hex()
	#blue = data.hex()
	hexArray.extend([red, green, blue])


 
with open('test.bmp', 'wb') as f:
    f.write(binascii.unhexlify(''.join(headers)))
    f.write(binascii.unhexlify(''.join(hexArray)))
