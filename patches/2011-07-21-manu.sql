SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

ALTER TABLE `massidea`.`private_messages` DROP FOREIGN KEY `private_messages_sender` , DROP FOREIGN KEY `private_messages_receiver` ;

ALTER TABLE `massidea`.`private_messages` DROP COLUMN `sender` , DROP COLUMN `receiver` , ADD COLUMN `sender_id` INT(11) NOT NULL  AFTER `id` , ADD COLUMN `parent_id` INT(11) NULL DEFAULT NULL  AFTER `sender_id` , ADD COLUMN `lft` INT(11) NULL DEFAULT NULL  AFTER `parent_id` , ADD COLUMN `rght` INT(11) NULL DEFAULT NULL  AFTER `lft` , ADD COLUMN `deleted` TINYINT(1) NOT NULL DEFAULT false  AFTER `rght` , ADD COLUMN `read_receipt` TINYINT(1) NOT NULL DEFAULT false  AFTER `deleted` , CHANGE COLUMN `created` `created` DATETIME NOT NULL  , 
  ADD CONSTRAINT `fk_private_messages_users3`
  FOREIGN KEY (`sender_id` )
  REFERENCES `massidea`.`users` (`id` )
  ON DELETE NO ACTION
  ON UPDATE CASCADE
, ADD INDEX `fk_private_messages_users3` (`sender_id` ASC) 
, DROP INDEX `private_messages_sender` 
, DROP INDEX `private_messages_receiver` ;

CREATE  TABLE IF NOT EXISTS `massidea`.`user_private_messages` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `private_message_id` INT(11) NOT NULL ,
  `receiver_id` INT(11) NOT NULL ,
  `important` TINYINT(1) NOT NULL DEFAULT false ,
  `read` TINYINT(1) NOT NULL DEFAULT false ,
  `reported` TINYINT(1) NOT NULL DEFAULT false ,
  `deleted` TINYINT(1) NOT NULL DEFAULT false ,
  INDEX `fk_user_private_messages_users1` (`receiver_id` ASC) ,
  INDEX `fk_user_private_messages_private_messages1` (`private_message_id` ASC) ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_user_private_messages_users1`
    FOREIGN KEY (`receiver_id` )
    REFERENCES `massidea`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_private_messages_private_messages1`
    FOREIGN KEY (`private_message_id` )
    REFERENCES `massidea`.`private_messages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE  TABLE IF NOT EXISTS `massidea`.`private_message_tags` (
  `id` INT(11) NOT NULL ,
  `user_id` INT(11) NOT NULL ,
  `name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_private_message_tags_users1` (`user_id` ASC) ,
  CONSTRAINT `fk_private_message_tags_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE  TABLE IF NOT EXISTS `massidea`.`private_message_tags_user_private_messages` (
  `user_private_message_id` INT(11) NOT NULL ,
  `private_message_tag_id` INT(11) NOT NULL ,
  INDEX `fk_received_private_message_tags_user_private_messages1` (`user_private_message_id` ASC) ,
  INDEX `fk_received_private_message_tags_private_message_tags1` (`private_message_tag_id` ASC) ,
  CONSTRAINT `fk_received_private_message_tags_user_private_messages1`
    FOREIGN KEY (`user_private_message_id` )
    REFERENCES `massidea`.`user_private_messages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_received_private_message_tags_private_message_tags1`
    FOREIGN KEY (`private_message_tag_id` )
    REFERENCES `massidea`.`private_message_tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE  TABLE IF NOT EXISTS `massidea`.`private_message_tags_private_messages` (
  `private_message_id` INT(11) NOT NULL ,
  `private_message_tag_id` INT(11) NOT NULL ,
  INDEX `fk_private_message_tags_private_messages_private_message_tags1` (`private_message_tag_id` ASC) ,
  INDEX `fk_private_message_tags_private_messages_private_messages1` (`private_message_id` ASC) ,
  CONSTRAINT `fk_private_message_tags_private_messages_private_message_tags1`
    FOREIGN KEY (`private_message_tag_id` )
    REFERENCES `massidea`.`private_message_tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_private_message_tags_private_messages_private_messages1`
    FOREIGN KEY (`private_message_id` )
    REFERENCES `massidea`.`private_messages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
