SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

ALTER TABLE `massidea`.`private_messages` DROP FOREIGN KEY `private_messages_receiver` , DROP FOREIGN KEY `private_messages_sender` ;

ALTER TABLE `massidea`.`private_messages` ADD COLUMN `title` VARCHAR(255) NULL DEFAULT NULL  AFTER `sender` , CHANGE COLUMN `receiver` `receiver` INT(11) NOT NULL  , CHANGE COLUMN `sender` `sender` INT(11) NOT NULL  , 
  ADD CONSTRAINT `private_messages_receiver`
  FOREIGN KEY (`receiver` )
  REFERENCES `massidea`.`users` (`id` )
  ON DELETE CASCADE
  ON UPDATE CASCADE, 
  ADD CONSTRAINT `private_messages_sender`
  FOREIGN KEY (`sender` )
  REFERENCES `massidea`.`users` (`id` )
  ON DELETE CASCADE
  ON UPDATE CASCADE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
