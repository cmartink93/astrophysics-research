#!/usr/bin/env python

#This program edits the ellipseScripti.cl script so that it has the right geompar coordinates.

#note:remember to rename/move all geompar related txt files once one galaxy uses them



def findx():
    counter = 0
    datain=open('geomparx0.txt',"r")
    lines = datain.readlines()
    newFile=open('geomparx02.txt',"w")
    for line in lines:
        counter = counter + 1
        words = line.split()
        print words
        if words[0] != "GOHAWKS":
            newFile.write("GOHAWKS "+line)
            dim = line
            print("the for loop has been broken")
            break
        else:
            newFile.write(line)
            print ("the counter value is: " + str(counter))
    for i in range(counter,24):
        print (lines[i])
        newFile.write(lines[i])
    datain.close()
    newFile.close()
    return dim


def findy():
    counter = 0
    datain=open('geompary0.txt',"r")
    lines = datain.readlines()
    newFile=open('geompary02.txt',"w")
    for line in lines:
        counter = counter + 1
        words = line.split()
        print words
        if words[0] != "GOHAWKS":
            newFile.write("GOHAWKS "+line)
            dim = line
            print("the for loop has been broken")
            break
        else:
            newFile.write(line)
            print ("the counter value is: " + str(counter))
    for i in range(counter,24):
        print (lines[i])
        newFile.write(lines[i])
    datain.close()
    newFile.close()
    return dim



gal=open('ellipseScriptg.cl',"r")                                                               #opens original galfit file to read
gal2=open('ellipseScriptg2.cl',"w")                                                          #creates new galfit file for new zero point


for line in gal:                                                                      #loops through every line in galCorr.txt
    words = line.split()
    if words[0] == "c1":                                                              #it only wants to manipulate the c1 line         
       gal2.write("geompar.x0="+str(findx())+"\n")                
    elif words[0] == "c2":                                                            #it only wants to manipulate the c2 line
        gal2.write("geompar.y0="+str(findy())+"\n")
    else:
        gal2.write(line)


gal.close()
gal2.close()
