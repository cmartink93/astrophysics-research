#!/usr/bin/env python


#NOTE: make sure the gal.txt file has '#' written as the first character if there are any spaces between sections of the document. Otherwise there will be an index error and you will get really annoyed.


#this program edits the gal.txt file so that it has each galaxy's specific center and image dimensions.



def findDim():
    '''note: in the main script you must rename the imDim2.txt files to imDim.txt and move it to the next galaxy.'''
    counter = 0
    datain=open('imDim.txt',"r")
    lines = datain.readlines()
    newFile=open('imDim2.txt',"w")
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


def findCenter():
    '''note: in the main script you must rename the centers2.txt files to imDim.txt and move it to the next galaxy.'''
    counter = 0
    datain=open('centers.txt',"r")
    lines = datain.readlines()
    newFile=open('centers2.txt',"w")
    for line in lines:
        counter = counter + 1
        words = line.split()
        print words
        if words[0] != "GOHAWKS":
            newFile.write("GOHAWKS "+line)
            center = line
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
    return center


gal=open('gal.txt',"r")                                                               #opens original galfit file to read
gal2=open('galCorr.txt',"w")                                                          #creates new galfit file for new zero point


for line in gal:                                                                      #loops through every line in galCorr.txt
    words = line.split()
    if words[0] == "H)":                                                              #it only wants to manipulate the H) line         
       gal2.write(findDim())                
    elif words[0] == "1)":                                                            #it only wants to manipulate the 1) line
        gal2.write(findCenter())
    else:
        gal2.write(line)


gal.close()
gal2.close()

