#!/bin/sh

# Define the banner
BANNER="EDCRYSHELL v0.1\nAuthor: @mr_introvert\nLast updated: 2023\nVersion: 0.1"

# Define the show_help() function
show_help() {
    echo "Usage: $0 [enc|dcr] integer shift"
    echo "Encrypt or decrypt an integer using bit shifting."
    echo ""
    echo "Options:"
    echo "  enc   Encrypt the integer value using the specified shift value."
    echo "  dcr   Decrypt the encrypted integer value using the specified shift value."
    echo "  -h, --help  Display this help and exit."
}

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

# Print the banner
echo -e $BANNER

# Parse command line options
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -h|--help)
    show_help
    exit 0
    ;;
    enc|dcr)
    shift
    $key $1 $2
    exit 0
    ;;
    *)
    echo "Error: Invalid option"
    show_help
    exit 1
    ;;
esac
done

# If no options were specified, show help
show_help
