#!/usr/bin/python3

import subprocess as sp

def ipcheck():
    status,result = sp.getstatusoutput("ping -c1 -w2 " + str(ip))
    if status == 0:
        print("el ip " + str(ip) + " esta up")
    else:
        print("el ip " + str(ip) + " disponible")


for a in range(1,253):
   ip = "192.168.1.%s" % ( a , )
   ipcheck()

