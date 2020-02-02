-- use moon;load data low_priority infile "/usr/bin/Invoice.csv" into table Invoice;
-- SHOW VARIABLES LIKE "secure_file_priv";
-- show variables like '%secure%';

-- 預設讀寫目錄
--  show variables like '%tmpdir%';
LOAD DATA INFILE '/var/tmp/Invoice.csv' 
INTO TABLE Invoice
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


use moon;LOAD DATA  INFILE "Invoice.csv" INTO TABLE Invoice;




cd /var/lib/ 
chown mysql:mysql mysql/ -R
use moon;LOAD DATA INFILE "/var/lib/mysql-files/Invoice.csv" into table Invoice;
