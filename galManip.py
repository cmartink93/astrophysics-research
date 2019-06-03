#!/usr/bin/env python


#NOTE: make sure the gal.txt file has '#' written as the first character if there are any spaces between sections of the document. Otherwise there will be an index error and you will get really annoyed.


#this program will go through a text file of magnitudes to find the magnitude corresponding to the galaxy. it will use that number in the rest of the program. The rest of the program manipulates the gal.txt file and creates a new one with the correct magnitude based on a calculated offset. 

def findMag():
    '''note: in the main script you must rename the newMags.txt files to sdssMags.txt and move it to the next galaxy.'''
    counter = 0
    datain=open('sdssMags.txt',"r")
    lines = datain.readlines()
    newFile=open('newMags.txt',"w")
    for line in lines:
        counter = counter + 1
        words = line.split()
        print words
        if words[0] != "GOHAWKS":
            newFile.write("GOHAWKS "+line)
            mag = words[0]
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
    return mag


datain=open('fit.log',"r")

list=[]


for line in datain:                                                                    #loops through every line in the log file
    words = line.split()
    for word in words:
        if word == "sersic":                                                           #if the first word in the line is 'sersic'
            for w in words:                                                            #it'll loop thru the words in the line
                if w[0] == "1":                                                        #if it finds a number close to a magnitude
                    cleanWord = w.strip(",)")
                    num = float(cleanWord)
                    if 9.0 <= num <= 22.0:                                            #it will put the number in a list of mags
                        print "The number " + str(num) + " was entered in the list"
                        list.append(num)
                        break                                                          #it will only look in "sersic" lines


datain.close()



length = len(list)                                                                     #length of list
print "the list length is: " + str(length)
galFinal = list[length-1]                                                              #final mag value of the galfit run
sdssband = findMag()
print "The magnitude you entered is: " + str(sdssband)
offset = float(sdssband) - galFinal
print "the calculated offset is: " + str(offset) 

gal=open('galCorr.txt',"r")                                                           #opens original galfit file to read
gal2=open('gal2.txt',"w")                                                             #creates new galfit file for new zero point
zeros=open('zeros.txt',"a+")                                                          #opens new txt file with all new zero points

for line in gal:                                                                      #loops through every line in galCorr.txt
    words = line.split()
    if words[0] == "J)":                                                              #it only wants to manipulate the J) line         
        for w in words:
            if w[0] == '2':                                                           #it only wants to manipulate the zero mag
                oldZero = float(w)
                print "the old zero point was: " + str(oldZero)
                newZero = oldZero + offset + 4.3                                      #calculates new zero point magnitude val
                print "the new zero point is: " + str(newZero)
                print "the recorded zero point is: " + str(newZero)                    
                gal2.write("J) "+str(newZero)+"                # Magnitude photometric zeropoint\n")
                zeros.write(str(newZero) + "\n")
                
    elif words[0] == "B)":
        gal2.write("B) fiti_block2.fits     # Output data image block\n")
    else:
        gal2.write(line)


gal.close()
gal2.close()
zeros.close()



                    
            

