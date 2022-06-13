## Paperclip Challenge data extraction
# Matthew Thompson
# 5/25/2022
# Version 0.2.3

## Description
#   This script allows MatLab to extract necessary data from the .pce files that 
#   the tensile tester saves it's data in. 

## Main Program

# Housekeeping
clc;
clearvars;

# Extract data
data1 = csvread('PaperClipChain_Test1 - PaperClipChain_Test1_text.csv',18,0);
data2 = csvread('PaperClipChain_Test2 - PaperClipChain_Test2_text.csv',18,0);
      
      ##Editors Note
        #the previous line will give the user a warning along the lines of 
        # dlmread (blah blah blah) found by searching load path, and because 
        # octave can be a serious pain in the butt it will not let you load a 
        # file you have saved inside the same folder as the script itself, 
        # to get around this you must enter in the command window the following 
        # line. 
        # warning("off","Octave:data-file-in-path");
       

#Allocate data
time1 = data1(:,1);
force1 = data1(:,2);
time2 = data2(:,1);
force2 = data2(:,2);

#Plot data
plot(time1,force1);
hold on 
plot(time2,force2);
hold off