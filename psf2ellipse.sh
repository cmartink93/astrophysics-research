#!/bin/bash




# to make script executeable type this in the command line: chmod +x psf2ellipse.sh

#insert code to create psf file and stuff here if you wanna start from scratch. Otherwise, before beginning this script, you must already have a "zoomed in" sdss file (probably named sdssi.fits) and a psfi file. The script starts at the step where everything is scaled and converted to the right units and it will end by making pretty plots. Some user input is required. Execute this script within the folder of the individual galaxy.


echo "The process is beginning!"

#echo "Enter the name of the original i or g frame fits file: "
#read frameFile




#note you need to remove the following from iraf before executing bash scripts:
#stty xgterm
#if (access ("home$loginuser.cl"))
#    cl < "home$loginuser.cl"
#;
#then move the login.cl file to your directory?




#cl < scale.cl 




#runs galfit the first time to fix zero point
#./galfit gal.txt

#calculates zero point offset and creates another txt file for galfit with the corrected zero point magnitude. User input required.
#./galManip.py

#runs galfit again but with corrected zero point mag and a new name for the fiti_block file. everything else is the same.   
#./galfit gal2.txt 





cl < ellipseScript.cl


 
echo "The process has ended (hopefully) successfully!"

 

