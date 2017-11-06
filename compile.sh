#!/bin/bash

HEAD="[Adblock Plus 1.1]
! Title: Lead Generator
! Expires: 4 days (update frequency)
! Homepage: https://github.com/Rpsl/adblock-leadgenerator-list
!-----------------General tracking systems-----------------!
! *** Fetched from: https://raw.githubusercontent.com/Rpsl/adblock-leadgenerator-list/master/list/list.txt ***"

RULES=$(<rules.txt)

echo "$HEAD" > ./misc/tmp.txt
echo "$RULES"|sort >> ./misc/tmp.txt

python2 ./misc/addChecksum.py < ./misc/tmp.txt > ./list/list.txt
rm ./misc/tmp.txt
