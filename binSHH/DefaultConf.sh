#!/bin/bash

## 改變 nginx
cd  /etc/nginx/conf.d
rm -rf  default.conf
wget https://raw.githubusercontent.com/moon-start/SH/master/binSHHconf/default.B.conf

## 修改檔案
mv      default.B.conf   default.conf
sed -i "s/專案名稱/$1/g"  default.conf

nginx -t
nginx -s reload