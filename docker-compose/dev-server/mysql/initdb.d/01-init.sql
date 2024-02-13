-- user MYSQL
USE mysql;

-- create gitea account
CREATE USER 'giteauser'@'%' IDENTIFIED BY 'giteapassword';

-- create gitea database
CREATE DATABASE IF NOT EXISTS giteadb DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- grant privileges
GRANT ALL PRIVILEGES ON giteadb.* TO 'giteauser'@'%';

-- flush privileges
FLUSH PRIVILEGES;