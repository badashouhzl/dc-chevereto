-- 创建用户
CREATE USER 'chevereto'@'%' IDENTIFIED BY 'CrJ8pbmASP1TZ2';
-- 创建库(如果存在就不会创建，需要清空数据请自行删除库)
CREATE DATABASE IF NOT EXISTS  chevereto;
--  授权
GRANT ALL PRIVILEGES ON chevereto.* TO 'chevereto'@'%';