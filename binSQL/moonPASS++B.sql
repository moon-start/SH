CREATE USER 'user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'yourpassword';
GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost' WITH GRANT OPTION;


SET GLOBAL validate_password.policy=LOW;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'hello123' PASSWORD EXPIRE NEVER;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'hello123';
FLUSH PRIVILEGES;