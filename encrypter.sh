#!/bin/bash

rm *.gpg *enc FileDecrypted.mp3

#TODO:ask for the first passwd here(OR Random?)
openssl enc -aes-256-cbc -md sha512 -pbkdf2 -iter 100000 -salt -pass pass:password123123123123ADADAAD -in file.mp3 -out aesEncFile.enc

# TODO:Ask for the email of the friend
echo "please import your friend pgp key"

gpg -o gpgEncFile.gpg -r test.test@test.com -e aesEncFile.enc

# ./decrypter.sh
