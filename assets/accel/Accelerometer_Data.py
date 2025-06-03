import serial
import time
import csv

ser = serial.Serial(port='COM4', baudrate=9600)
ser.flush()

while True:
    try:
        x_val = ser.readline()
        y_val = ser.readline()
        z_val = ser.readline()
        de_x_val = str(x_val,"UTF-8")
        de_y_val = str(x_val,"UTF-8")
        de_z_val = str(x_val,"UTF-8")
        print(de_x_val, de_y_val, de_z_val)
        
        with open("test_data2.csv","a") as csvfile:
            writer = csv.writer(csvfile, delimiter=" ")
            writer.writerow([de_x_val, de_y_val, de_z_val])
    except:
        print("Error")
        break