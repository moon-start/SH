ALTER USER 'root'@'%' IDENTIFIED BY 'your-password' PASSWORD EXPIRE NEVER;
1
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'your-password';
1
FLUSH PRIVILEGES;



ALTER USER 'yoshio'@"localhost" IDENTIFIED WITH mysql_native_password BY '{password}';




CREATE USER 'user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'yourpassword';
GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost' WITH GRANT OPTION;