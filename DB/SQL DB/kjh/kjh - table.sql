CREATE TABLE `admin_cs_notice` (
  `no` INT AUTO_INCREMENT PRIMARY KEY,
  `title`	VARCHAR(255) NOT NULL,
  `content` TEXT NOT NULL,
  `mem_id` VARCHAR(45) NOT NULL,
  `rdate` DATETIME NOT NULL
);

CREATE TABLE `admin_cs_qna` (
  `no` INT AUTO_INCREMENT PRIMARY KEY,
  `comment` VARCHAR(255) DEFAULT 0,
  `title`	VARCHAR(255) NOT NULL,
  `content` TEXT NOT NULL,
  `mem_id` VARCHAR(45) NOT null,
  `rdate` DATETIME NOT NULL
);

CREATE TABLE `cs_qna` (
  `no` INT AUTO_INCREMENT PRIMARY KEY,
  `comment` VARCHAR(255) DEFAULT 0,
  `title`	VARCHAR(255) NOT NULL,
  `content` TEXT NOT NULL,
  `mem_id` VARCHAR(45) NOT NULL,
  `rdate` DATETIME NOT NULL
);



############## Test #################
# id 없이
CREATE TABLE `admin_cs_notice` (
  `no` INT AUTO_INCREMENT PRIMARY KEY,
  `title`	VARCHAR(255) NOT NULL,
  `content` TEXT NOT NULL,
  `rdate` DATETIME NOT NULL
);
# id null
CREATE TABLE `admin_cs_notice` (
  `no` INT AUTO_INCREMENT PRIMARY KEY,
  `title`	VARCHAR(255) NOT NULL,
  `content` TEXT NOT NULL,
  `mem_id` VARCHAR(45),
  `rdate` DATETIME NOT NULL
);
# id null
CREATE TABLE `cs_notice` (
  `no` INT AUTO_INCREMENT PRIMARY KEY,
  `title`	VARCHAR(255) NOT NULL,
  `content` TEXT NOT NULL,
  `mem_id` VARCHAR(45),
  `rdate` DATETIME NOT NULL
);

CREATE TABLE `cs_qna` (
  `no` INT AUTO_INCREMENT PRIMARY KEY,
  `comment` VARCHAR(255) DEFAULT 0,
  `title`	VARCHAR(255) NOT NULL,
  `content` TEXT NOT NULL,
  `mem_id` VARCHAR(45),
  `rdate` DATETIME NOT NULL
);












