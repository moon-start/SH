#!/bin/bash

echo `pwd`

############## 預設是家目錄
cd ~/SH
chmod +x *.sh


# PATH=`pwd`:$PATH:12345
# export PATH

##  nano ~/.bash_profile
# echo export PATH=`pwd`:$PATH:12345

echo export PATH=`pwd`:$PATH>>~/.bash_profile 
source ~/.bash_profile