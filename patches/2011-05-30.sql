SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='';

ALTER SCHEMA `massidea`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

USE `massidea`;

ALTER TABLE `massidea`.`users` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`contents` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`groups` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`tags` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`flags` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`files` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`languages` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`deny_translations` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`country` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`campaigns` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`ratings` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`related_companies` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`stats` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`baseclasses` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`mapping` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`deleted` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`privileges` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`comments` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`profiles` CHARACTER SET = utf8 , COLLATE = utf8_general_ci , ADD COLUMN `id` INT(11) NOT NULL AUTO_INCREMENT  FIRST 
, DROP INDEX `profiles_users_id` 
, ADD INDEX `profiles_users_id` (`user_id` ASC) 
, DROP PRIMARY KEY 
, ADD PRIMARY KEY (`id`) ;

ALTER TABLE `massidea`.`profiles_groups` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`groups_users` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`linked_contents` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`private_messages` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `massidea`.`requests` CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
