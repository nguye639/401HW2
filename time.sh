#!/bin/bash
rm *.o
make

total=0

for i in {1..10}; do

time(
./process ./images/cube.png cube_processed.png
./process ./images/earth.png earth_processed.png
./process ./images/sparty.png sparty_processed.png
./process ./images/MSUstadium.png MSU_processed.png

)
 
done



