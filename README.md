# Encryption/Decryption Script

This is a shell script that provides functions for encrypting and decrypting values using bitwise shift operators. The `enc()` function takes two arguments, a value to encrypt and a shift value, and returns the encrypted value. The `dcr()` function takes two arguments, an encrypted value and the same shift value used in encryption, and returns the decrypted value.

## Usage

To use the script, open a terminal and run the following commands:

`$ chmod +x encryption.sh`
`$ ./encryption.sh`


This will run the script and display a prompt for entering a value and shift value. You can then choose to encrypt or decrypt the value.

## Notes

- The shift value must be less than 32, otherwise an error message will be displayed.
- The script requires the `bash` shell to run. If you are using a different shell, you may need to modify the shebang line at the top of the script.
