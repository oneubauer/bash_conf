#!/bin/bash

# homedir dotfiles
DOTFILES=$(echo .gitignore .bash* .vim* .Xres*)

for file in $DOTFILES 
 do 
   mv -f $HOME/$file $HOME/${file}.bak 2>/dev/null
   ln -s $PWD/$file $HOME/$file
 done

# config dir
CONFIGFILES=$(echo rofi* i3*)

for file in $DOTFILES 
 do 
   mv -f $HOME/.config/$file $HOME/.config/${file}.bak 2>/dev/null
   ln -s $PWD/$file $HOME/.config/$file
 done

