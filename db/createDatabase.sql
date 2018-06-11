CREATE DATABASE `social_connect`;
CREATE USER `social_connect`@`localhost` IDENTIFIED BY '@dmin02';
GRANT ALL ON social_connect.* TO social_connect@localhost  identified by '@admin02';

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastModifiedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `userId_UNIQUE` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='User Table';

ALTER TABLE `social_connect`.`user` 
ADD COLUMN `enabled` VARCHAR(1) NOT NULL DEFAULT '1' AFTER `lastModifiedDate`;


CREATE TABLE `userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) NOT NULL,
  `addressLine1` varchar(45) DEFAULT NULL,
  `addressLine2` varchar(45) DEFAULT NULL,
  `mobileNumber` varchar(12) NOT NULL,
  `phoneNumber` varchar(12) DEFAULT NULL,
  `emailId` varchar(45) NOT NULL,
  `userPhoto` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `userId_idx` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `userrole` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `role` varchar(45) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  constraint FK_USERROLE foreign key(`userId`) references user(`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='User Role Table';

CREATE TABLE `userloginattempt` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) DEFAULT NULL,
  `userLoginFailureAttempt` int(11) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastFailureLoginTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `userStatus` varchar(45) DEFAULT NULL,
  `lastFailureLoginStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `userId_idx` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO user (`userId`, `firstName`, `lastName`, `password`) VALUES ('bhushanp@gmail.com', 'Bhushan P', 'Patil', MD5('admin@12345'));
INSERT INTO userinfo (`userId`, `addressLine1`, `addressLine2`, `mobileNumber`, `phoneNumber`, `emailId`, `userPhoto`) VALUES ('bhushanp', 'Dange Chowk','Thergaon','919890309939','020239345','patilbhushanb@gmil.com','');
INSERT INTO userrole(`userid`, `role`, `createdDate`) VALUES (2,'ROLE_ADMIN', now());