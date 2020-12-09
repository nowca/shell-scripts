#!/bin/bash 
 
if [ "$#" == "0" ]; then 
    echo "You need tu supply at least one argument!" 
    exit 1
fi 
 
DOMAINS=( '.com' '.de' '.co.uk' '.fr' '.es' '.it' '.nl' '.se' )

ELEMENTS=${#DOMAINS[@]} 
 
while (( "$#" )); do 
 
  for (( i=0;i<$ELEMENTS;i++)); do 
      whois $1${DOMAINS[${i}]} | egrep -q '^No match|^NOT FOUND|^Not fo|AVAILABLE|^No Data Fou|has not been regi|No entri|Status: free|available for purchase' 
	  if [ $? -eq 0 ]; then
	      echo -e "\e[32m$1${DOMAINS[${i}]} : available"
	  else
	      echo -e "\e[31m$1${DOMAINS[${i}]} : not available"  
	  fi 
  done 

done
