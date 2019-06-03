#!/usr/bin/env python


#this program edits the scale.cl file to have the correct frame name fits file in it.in the main script you must rename the newNames.txt files to frameNames.txt and move it to the next galaxy.same goes for the scale.cl and scale2.cl files.


def findFile():
    counter = 0
    name = ''
    datain=open('frameNames.txt',"r")
    lines = datain.readlines()
    newFile=open('newNames.txt',"w")
    for line in lines:
        counter = counter + 1
        words = line.split()
        print words
        if words[0] != "GOHAWKS":
            newFile.write("GOHAWKS "+line)
            name = words[0]
            break
        else:
            newFile.write(line)
            print ("the counter value is: " + str(counter))
    for i in range(counter,24):
        newFile.write(lines[i]) 
    datain.close()
    newFile.close()
    return name


file = findFile()

irafFile = open('scale.cl','r')
newIraf = open('scale2.cl','a+')

for line in irafFile:                                                                      
    words = line.split()
    if words[0] == "imgets":                                 
        for w in words:
            if w[0] == 'f':                                                                               
                newIraf.write("imgets "+file+" NMGY #finds the nmgy conversion factor\n")
                break
    elif words[0] == "imarith" and words[1] != "psfTest.fits" and words[1] != "psfi.fits":
        for w in words:
            if w[0] == 'f' or 's':
                newIraf.write("imarith "+file+" / (nmgy_num) sdssi_corr\n")
                break
    else:
        newIraf.write(line)


irafFile.close()
newIraf.close()
