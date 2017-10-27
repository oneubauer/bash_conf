#!/bin/bash

FILES=$(echo .gitignore .bash* .vim*)

for file in $FILES 
 do 
   mv -f $HOME/$file $HOME/${file}.bak 2>/dev/null
   ln -s $PWD/$file $HOME/$file
 done


