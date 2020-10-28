#!/bin/bash
read -p "Enter day:" day
read -p "Enter month:" month
if(( month >= 3 && month <= 6 ))
then
    if(( month == 3 && day <= 20 || month == 6 && day >= 20 ))
    then
        echo "false"
    else
        echo "true"
    fi
else    
    echo "false"
fi
