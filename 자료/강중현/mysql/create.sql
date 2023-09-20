CREATE DATABASE wherego;

CREATE TABLE IF NOT EXISTS `member` (
	`uid` VARCHAR(20) NOT NULL PRIMARY KEY,
	`password` varchar(255) NOT NULL,
	`name` varchar(5) NOT NULL,
	`level` char(1) NOT NULL DEFAULT '1',
	`point` int NOT NULL DEFAULT '0',
	`phone` varchar(20) DEFAULT NULL,
	`zip` varchar(45) DEFAULT NULL,
	`addr1` varchar(45) DEFAULT NULL,
	`addr2` varchar(45) DEFAULT NULL
);

SELECT * FROM member;

use mysql;
select user, host from USER;
create USER 'M1'@'host' identified BY 'where1234';
create USER 'M2'@'host' identified BY 'where1234';
create USER 'M3'@'host' identified BY 'where1234';
create USER 'M4'@'host' identified BY 'where1234';
create USER 'M5'@'host' identified BY 'where1234';

# 특정 데이터베이스의 모든 테이블에 모든 권한을 줌
grant all privileges on wherego.* TO 'M1'@'%';

grant all privileges on wherego.* TO 'm1'@'localhost' identified by '0000';

grant all privileges on wherego.* TO 'M1'@localhost identified BY '1234';