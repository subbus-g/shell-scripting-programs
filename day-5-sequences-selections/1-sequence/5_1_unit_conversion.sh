#!/bin/bash
#a)
no_of_inches=42
#scale=4 fixes no of digits after . to 4
no_of_feets=$(echo "scale=4; $no_of_inches / 12" | bc -l) 
echo "42 inches = $no_of_feets feets"

#b)
length_in_ft=60
breadth_in_ft=40
area_in_ft=$(( length_in_ft * breadth_in_ft ))
#scale=4 fixes no of digits after . to 4
area_in_m=$(echo " scale=4 ; $area_in_ft * 0.3048 * 0.3048" | bc -l)
echo "Area of the rectangular plot is $area_in_m meters"
#c)
no_of_plots=25
#1acr=43560 sqft
area_in_acr=$(echo " scale=4 ; $area_in_ft * $no_of_plots / 43560" | bc -l)
echo "The Area of $no_of_plots plots is $area_in_acr acres"