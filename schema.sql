CREATE DATABASE IF NOT EXISTS sql12626380;

USE sql12626380;

CREATE TABLE IF NOT EXISTS `test` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `ticket` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `summary` text NOT NULL,
  `priority` varchar(255) NOT NULL DEFAULT 'LOW',
  `status` varchar(255) NOT NULL DEFAULT 'CREATED',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

CREATE USER IF NOT EXISTS 'sql12626380'@'jdbc:mysql:sql12.freesqldatabase.com' IDENTIFIED BY 'EKAjUcQ8ef';
GRANT SELECT,UPDATE,INSERT,DELETE ON sql12626380.* TO 'jdbc:mysql:sql12.freesqldatabase.com';
