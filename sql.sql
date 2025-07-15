-- 创建用户
CREATE USER 'chevereto'@'%' IDENTIFIED BY 'CrJ8pbmASP1TZ2';
-- 创建库
CREATE DATABASE chevereto;
--  授权
GRANT ALL PRIVILEGES ON chevereto.* TO 'chevereto'@'%';