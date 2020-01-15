#!/bin/bash

echo `pwd`

chmod +x *.sh


PATH=`pwd`:$PATH:12345

export PATH

##  nano ~/.bash_profile
## echo export PATH=`pwd`:$PATH:12345