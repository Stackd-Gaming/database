
use Stackddb;


CREATE TABLE `feedback` (
  `idfeedback` int NOT NULL,
  `review` int NOT NULL,
  `feedbackby` int NOT NULL,
  `feedbackfor` int NOT NULL,
  `feedbackdate` date NOT NULL,
  `flagcode` int NOT NULL default 0,
  PRIMARY KEY (`idfeedback`)
);


LOCK TABLES `feedback` WRITE;

INSERT INTO `feedback` VALUES (1,5,2,1,'2020-02-09',0);

UNLOCK TABLES;


CREATE TABLE `game` (
  `gameid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` varchar(15) NOT NULL COMMENT 'ACTIVE, INACTIVE',
  `mode` varchar(25) NOT NULL COMMENT 'SINGLE, MULTI',
  `createdate` date NOT NULL,
  `createdby` varchar(64) NOT NULL,
  PRIMARY KEY (`gameid`)
) ;


LOCK TABLES `game` WRITE;

INSERT INTO `game` VALUES (1,'League of Legends','ACTIVE','MULTIPLAYEr','2020-02-09','sysadmin');

UNLOCK TABLES;

CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `username` varchar(64) NOT NULL,
  `credentials` varchar(64) NOT NULL,
  `createdate` date NOT NULL,
  `createdby` varchar(64) NOT NULL,
  `status` varchar(15) NOT NULL COMMENT 'ACTIVE, INACTIVE, BANNED, LOCKED',
  `premium` int NOT NULL default 0,
  `discordcode` varchar(64) NOT NULL,
  `lolusername` varchar(64) NOT NULL,
  `gender` varchar(15) NOT NULL COMMENT 'MALE, FEMALE, OTHER',
  `age` int NOT NULL,
  `location` varchar(30) NOT NULL,
  `role` varchar(20) NOT NULL COMMENT 'ADC, JUNGLER, MIDLANE, SUPPORT, TOPLANE',
  PRIMARY KEY (`userid`)
) ;



LOCK TABLES `user` WRITE;

INSERT INTO `user` VALUES (1,'hello@gmail.com','jkol','wordpass','2020-02-09','sysadmin','ACTIVE',0,'JK#6221','kingnidhog', 'FEMALE', 15, 'Toronto', 'ADC');

UNLOCK TABLES;


CREATE TABLE `user_profile` (
  `iduser_profile` int NOT NULL,
  `gameid` int NOT NULL,
  `winrate` double NOT NULL,
  `kda` varchar(45) NOT NULL,
  `rating` double NOT NULL,
  `rank` int NOT NULL,
  `createdate` date NOT NULL,
  `createdby` varchar(45) NOT NULL,
  `updatedate` date NOT NULL,
  `updatedby` varchar(45) NOT NULL,
  `avatar` varchar(1000) NOT NULL,
  PRIMARY KEY (`iduser_profile`)
) ;


LOCK TABLES `user_profile` WRITE;

INSERT INTO `user_profile` VALUES (1,1,25,'2',3.4,3,'2020-02-09','2','2020-02-09','sysadmin', 'ABCDEFG');

UNLOCK TABLES;


CREATE TABLE `user_statistics` (
  `iduser_statistics` int NOT NULL,
  `userid` int NOT NULL,
  `gameid` int NOT NULL,
  `wins` int NOT NULL,
  `losses` int NOT NULL,
  `level` int NOT NULL,
  `kda` double NOT NULL,
  `createdate` date NOT NULL,
  `createdby` varchar(45) NOT NULL,
  `rank` int NOT NULL,
  PRIMARY KEY (`iduser_statistics`)
) ;


CREATE TABLE `player_match` (
  `playermatchid` int NOT NULL AUTO_INCREMENT,
  `userid1` int NOT NULL,
  `userid2` int NOT NULL,
  `match_status` varchar(25) NOT NULL COMMENT 'MATCHED, ACCEPTED',
  `userid1_feedback` varchar(25) default 'NOTGIVEN' COMMENT 'GIVEN, NOTGIVEN',
  `userid2_feedback` varchar(25) default 'NOTGIVEN' COMMENT 'GIVEN, NOTGIVEN',
  `createdate` date NOT NULL,
  `createdby` varchar(64) NOT NULL,
  PRIMARY KEY (`playermatchid`)
);


LOCK TABLES `user_statistics` WRITE;

INSERT INTO `user_statistics` VALUES (1,1,1,23,1,5,1,'2020-02-09','sysadmin',1);

UNLOCK TABLES;

