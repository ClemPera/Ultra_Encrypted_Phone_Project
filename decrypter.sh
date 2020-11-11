#!/bin/bash

# Todo:Ask for the gpg secret key
gpg --passphrase aZERTY123 -o aesEncFileGpgDec.enc -d gpgEncFile.gpg

#todo:Ask for the passwd

openssl enc -aes-256-cbc -md sha512 -pbkdf2 -iter 100000 -salt -d -pass pass:password123123123123ADADAAD -in aesEncFileGpgDec.enc -out FileDecrypted.mp3

vlc FileDecrypted.mp3
