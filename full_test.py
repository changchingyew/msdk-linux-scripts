import csv
import os

with open('MSDK_Test_Cases.csv') as f:
    reader = csv.reader(f)
    for csv_row in reader:
        exec_cmds=csv_row[21]
        exec_cmd_array=exec_cmds.splitlines()
        exec_cmd_array_len = len(exec_cmd_array)
        if ( exec_cmd_array_len==1 ):
            exec_cmd_test=exec_cmd_array[0]
            if( exec_cmd_test!="N/A" and exec_cmd_test!="Test Procedures" ):
                print(exec_cmd_test)
                #os.system(exec_cmd_test)
        elif ( exec_cmd_array_len==2 or exec_cmd_array_len==3 ):
            exec_cmd_test_line=exec_cmd_array[1]
            exec_cmd_test=exec_cmd_test_line[2:]
            print(exec_cmd_test)
            #os.system(exec_cmd_test)
