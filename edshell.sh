#!/bin/sh

# Define the enc() function
enc(){
    if [ "$2" -lt 32 ]; then
        echo "This is the encryption value: $(($1 << $2))"
    else
        echo "Error: Invalid shift value"
    fi
}

# Define the dcr() function
dcr(){
    if [ "$2" -lt 32 ]; then
        echo "This is the decryption value: $(($1 >> $2))"
    else
        echo "Error: Invalid shift value"
    fi
}
