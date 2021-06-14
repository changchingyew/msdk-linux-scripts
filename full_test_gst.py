import csv
import os

with open('GST-MSDK_Testcases.csv') as f:
    reader = csv.reader(f)
    for csv_row in reader:
        exec_cmd_array=csv_row[21].splitlines()
        exec_cmd_array_len = len(exec_cmd_array)
        if ( exec_cmd_array_len==1 ):
            exec_cmd_test=exec_cmd_array[0]
            if( exec_cmd_test!="N/A" and exec_cmd_test!="Test Procedures" ):
                print(exec_cmd_test)
                #os.system(exec_cmd_test)
        elif ( exec_cmd_array_len==2 or exec_cmd_array_len==3 ):
            exec_cmd_test=exec_cmd_array[1][2:]
            print(exec_cmd_test)
            #os.system(exec_cmd_test)
