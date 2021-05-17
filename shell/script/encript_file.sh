#!/bin/bash

echo "all argument $#"
echo "Hello World $1"


encript(){

if [ $# -eq 0 ]; then
   echo "No argument Provided"
   exit 1	
fi

}

encript
