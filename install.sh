#!/bin/bash

FILES=$(ls .bash*)

for file in $FILES 
 do 
   mv -f $HOME/$file $HOME/${file}.bak 2>/dev/null
   ln -s $PWD/$file $HOME/$file
 done


