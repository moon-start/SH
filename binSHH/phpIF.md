https://www.opencli.com/linux/shell-script-check-file-directory-exists


家的LinuxShell腳本檢查檔案及目錄是否存在
Shell腳本檢查檔案及目錄是否存在 唐三  2015年5月9日  的Linux  2條留言

 
在Shell Script檢查檔案及目錄是否存儲跟Perl很相似，都是透過-e及-d在if裡面判斷，寫法如下：


 
檢查目錄是否存在

#!/bin/sh

if [ -d "/path/to/dir" ]; then
    # 目錄 /path/to/dir 存在
    echo "Directory /path/to/dir exists."
else
    # 目錄 /path/to/dir 不存在
    echo "Directory /path/to/dir does not exists."
fi
1
2
3
4
5
6
7
8
9
#!/bin/sh
 
if [ -d "/path/to/dir" ]; then
    # 目錄 /path/to/dir 存在
    echo "Directory /path/to/dir exists."
else
    # 目錄 /path/to/dir 不存在
    echo "Directory /path/to/dir does not exists."
fi
檢查檔案是否存在

#!/bin/sh

if [ -f "/path/to/dir/filename" ]; then
    # 檔案 /path/to/dir/filename 存在
    echo "File /path/to/dir/filename exists."
else
    # 檔案 /path/to/dir/filename 不存在
    echo "File /path/to/dir/filename does not exists."
fi
1
2
3
4
5
6
7
8
9
#!/bin/sh
 
if [ -f "/path/to/dir/filename" ]; then
    # 檔案 /path/to/dir/filename 存在
    echo "File /path/to/dir/filename exists."
else
    # 檔案 /path/to/dir/filename 不存在
    echo "File /path/to/dir/filename does not exists."
fi