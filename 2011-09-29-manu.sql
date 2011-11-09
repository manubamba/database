SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';


-- -----------------------------------------------------
-- Table `massidea2`.`countries`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`countries` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`countries` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(50) NOT NULL ,
  `iso3166` VARCHAR(2) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`towns`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`towns` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`towns` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(50) NOT NULL ,
  `country_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_towns_countries1` (`country_id` ASC) ,
  CONSTRAINT `fk_towns_countries1`
    FOREIGN KEY (`country_id` )
    REFERENCES `massidea2`.`countries` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`languages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`languages` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`languages` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(50) NOT NULL ,
  `iso6391` VARCHAR(6) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`users` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(45) NOT NULL ,
  `password` VARCHAR(50) NOT NULL ,
  `password_salt` VARCHAR(128) NOT NULL ,
  `email` TEXT NOT NULL ,
  `name` VARCHAR(100) NULL ,
  `last_login` DATETIME NULL ,
  `created` DATETIME NULL ,
  `modified` DATETIME NULL ,
  `town_id` INT NOT NULL ,
  `language_id` INT NOT NULL ,
  `country_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_users_towns1` (`town_id` ASC) ,
  INDEX `fk_users_languages1` (`language_id` ASC) ,
  INDEX `fk_users_countries1` (`country_id` ASC) ,
  CONSTRAINT `fk_users_towns1`
    FOREIGN KEY (`town_id` )
    REFERENCES `massidea2`.`towns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_languages1`
    FOREIGN KEY (`language_id` )
    REFERENCES `massidea2`.`languages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_countries1`
    FOREIGN KEY (`country_id` )
    REFERENCES `massidea2`.`countries` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`contents`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`contents` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`contents` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `class` ENUM('challenge','idea','vision') NULL ,
  `title` VARCHAR(150) NULL ,
  `lead` TEXT NULL ,
  `body` TEXT NULL ,
  `references` TEXT NULL ,
  `published` TINYINT(1)  NOT NULL DEFAULT false COMMENT 'Has content published?' ,
  `created` DATETIME NULL ,
  `modified` DATETIME NULL ,
  `data` TEXT NULL ,
  `user_id` INT NOT NULL ,
  `language_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_contents_users1` (`user_id` ASC) ,
  INDEX `fk_contents_languages1` (`language_id` ASC) ,
  CONSTRAINT `fk_contents_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_languages1`
    FOREIGN KEY (`language_id` )
    REFERENCES `massidea2`.`languages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`groups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`groups` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`groups` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NULL ,
  `lead` TEXT NULL ,
  `body` TEXT NULL ,
  `created` DATETIME NOT NULL ,
  `modified` DATETIME NOT NULL ,
  `closed` TINYINT(1)  NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`personal_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`personal_tags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`personal_tags` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NULL ,
  `color` VARCHAR(45) NULL ,
  `public` TINYINT(1)  NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`flags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`flags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`flags` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `created` DATETIME NOT NULL ,
  `flagged_uri` TEXT NULL COMMENT 'Where you has flagged something. This helps admins make their work.' ,
  `user_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_flags_users1` (`user_id` ASC) ,
  CONSTRAINT `fk_flags_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`files`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`files` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`files` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NULL ,
  `hash` VARCHAR(50) NULL ,
  `user_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_files_users1` (`user_id` ASC) ,
  CONSTRAINT `fk_files_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`deny_translations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`deny_translations` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`deny_translations` (
  `user_id` INT NOT NULL ,
  `language_id` INT NOT NULL ,
  INDEX `fk_deny_translations_users1` (`user_id` ASC) ,
  INDEX `fk_deny_translations_languages1` (`language_id` ASC) ,
  CONSTRAINT `fk_deny_translations_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_deny_translations_languages1`
    FOREIGN KEY (`language_id` )
    REFERENCES `massidea2`.`languages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(140) NULL ,
  `lead` TEXT NULL ,
  `body` TEXT NULL ,
  `start_time` DATE NULL ,
  `end_time` DATE NULL ,
  `created` DATETIME NOT NULL ,
  `modified` DATETIME NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`ratings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`ratings` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`ratings` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `value` INT NULL ,
  `user_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_ratings_users1` (`user_id` ASC) ,
  CONSTRAINT `fk_ratings_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`related_companies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`related_companies` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`related_companies` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`stats`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`stats` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`stats` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NOT NULL ,
  `key` INT NOT NULL ,
  `value` INT NULL ,
  `modified` DATETIME NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_stats_users1` (`user_id` ASC) ,
  CONSTRAINT `fk_stats_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`privileges`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`privileges` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`privileges` (
  `user_id` INT NOT NULL ,
  `group` INT NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`linked_contents`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`linked_contents` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`linked_contents` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `from` INT NOT NULL ,
  `to` INT NOT NULL ,
  `created` DATETIME NULL ,
  INDEX `fk_linked_contents_contents1` (`from` ASC) ,
  INDEX `fk_linked_contents_contents2` (`to` ASC) ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_linked_contents_contents1`
    FOREIGN KEY (`from` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_linked_contents_contents2`
    FOREIGN KEY (`to` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`requests`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`requests` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`requests` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `receiver` VARCHAR(45) NULL ,
  `message` TEXT NULL ,
  `sender` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_requests_users1` (`sender` ASC) ,
  CONSTRAINT `fk_requests_users1`
    FOREIGN KEY (`sender` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`tokens`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`tokens` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`tokens` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `type` ENUM('activation','reset') NOT NULL ,
  `value` VARCHAR(50) NULL ,
  `expires` DATETIME NULL ,
  `user_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_tokens_users1` (`user_id` ASC) ,
  CONSTRAINT `fk_tokens_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`private_messages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`private_messages` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`private_messages` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `parent_id` INT NULL DEFAULT NULL ,
  `lft` INT NULL DEFAULT NULL ,
  `rght` INT NULL DEFAULT NULL ,
  `deleted` TINYINT(1)  NOT NULL DEFAULT false ,
  `read_receipt` TINYINT(1)  NOT NULL DEFAULT false ,
  `title` VARCHAR(255) NULL ,
  `message` TEXT NOT NULL ,
  `created` DATETIME NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`contents_ratings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`contents_ratings` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`contents_ratings` (
  `content_id` INT NOT NULL ,
  `rating_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`content_id`, `rating_id`) ,
  INDEX `fk_contents_ratings_ratings1` (`rating_id` ASC) ,
  INDEX `fk_contents_ratings_contents1` (`content_id` ASC) ,
  CONSTRAINT `fk_contents_ratings_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_ratings_ratings1`
    FOREIGN KEY (`rating_id` )
    REFERENCES `massidea2`.`ratings` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`contents_flags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`contents_flags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`contents_flags` (
  `content_id` INT NOT NULL ,
  `flag_id` INT NOT NULL ,
  PRIMARY KEY (`content_id`, `flag_id`) ,
  INDEX `fk_contents_flags_flags1` (`flag_id` ASC) ,
  INDEX `fk_contents_flags_contents1` (`content_id` ASC) ,
  CONSTRAINT `fk_contents_flags_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_flags_flags1`
    FOREIGN KEY (`flag_id` )
    REFERENCES `massidea2`.`flags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`tags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`tags` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`contents_personal_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`contents_personal_tags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`contents_personal_tags` (
  `content_id` INT NOT NULL ,
  `personal_tag_id` INT NOT NULL ,
  PRIMARY KEY (`content_id`, `personal_tag_id`) ,
  INDEX `fk_contents_personal_tags_personal_tags1` (`personal_tag_id` ASC) ,
  INDEX `fk_contents_personal_tags_contents1` (`content_id` ASC) ,
  CONSTRAINT `fk_contents_personal_tags_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_personal_tags_personal_tags1`
    FOREIGN KEY (`personal_tag_id` )
    REFERENCES `massidea2`.`personal_tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`contents_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`contents_tags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`contents_tags` (
  `content_id` INT NOT NULL ,
  `tag_id` INT NOT NULL ,
  PRIMARY KEY (`content_id`, `tag_id`) ,
  INDEX `fk_contents_tags_tags1` (`tag_id` ASC) ,
  INDEX `fk_contents_tags_contents1` (`content_id` ASC) ,
  CONSTRAINT `fk_contents_tags_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_tags_tags1`
    FOREIGN KEY (`tag_id` )
    REFERENCES `massidea2`.`tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`contents_related_companies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`contents_related_companies` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`contents_related_companies` (
  `content_id` INT NOT NULL ,
  `related_company_id` INT NOT NULL ,
  PRIMARY KEY (`content_id`, `related_company_id`) ,
  INDEX `fk_contents_related_companies_related_companies1` (`related_company_id` ASC) ,
  INDEX `fk_contents_related_companies_contents1` (`content_id` ASC) ,
  CONSTRAINT `fk_contents_related_companies_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_related_companies_related_companies1`
    FOREIGN KEY (`related_company_id` )
    REFERENCES `massidea2`.`related_companies` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`contents_files`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`contents_files` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`contents_files` (
  `content_id` INT NOT NULL ,
  `file_id` INT NOT NULL ,
  PRIMARY KEY (`content_id`, `file_id`) ,
  INDEX `fk_contents_files_files1` (`file_id` ASC) ,
  INDEX `fk_contents_files_contents1` (`content_id` ASC) ,
  CONSTRAINT `fk_contents_files_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_files_files1`
    FOREIGN KEY (`file_id` )
    REFERENCES `massidea2`.`files` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`contents_towns`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`contents_towns` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`contents_towns` (
  `content_id` INT NOT NULL ,
  `town_id` INT NOT NULL ,
  PRIMARY KEY (`content_id`, `town_id`) ,
  INDEX `fk_contents_towns_towns1` (`town_id` ASC) ,
  INDEX `fk_contents_towns_contents1` (`content_id` ASC) ,
  CONSTRAINT `fk_contents_towns_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_towns_towns1`
    FOREIGN KEY (`town_id` )
    REFERENCES `massidea2`.`towns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_contents`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_contents` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_contents` (
  `campaign_id` INT NOT NULL ,
  `content_id` INT NOT NULL ,
  PRIMARY KEY (`campaign_id`, `content_id`) ,
  INDEX `fk_campaigns_contents_contents1` (`content_id` ASC) ,
  INDEX `fk_campaigns_contents_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_contents_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_contents_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`contents_groups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`contents_groups` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`contents_groups` (
  `content_id` INT NOT NULL ,
  `group_id` INT NOT NULL ,
  PRIMARY KEY (`content_id`, `group_id`) ,
  INDEX `fk_contents_groups_groups1` (`group_id` ASC) ,
  INDEX `fk_contents_groups_contents1` (`content_id` ASC) ,
  CONSTRAINT `fk_contents_groups_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_groups_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`contents_users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`contents_users` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`contents_users` (
  `content_id` INT NOT NULL ,
  `user_id` INT NOT NULL ,
  PRIMARY KEY (`content_id`, `user_id`) ,
  INDEX `fk_contents_users_users1` (`user_id` ASC) ,
  INDEX `fk_contents_users_contents1` (`content_id` ASC) ,
  CONSTRAINT `fk_contents_users_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_users_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`private_messages_users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`private_messages_users` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`private_messages_users` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `private_message_id` INT NOT NULL ,
  `receiver` INT NOT NULL ,
  `important` TINYINT(1)  NOT NULL DEFAULT false ,
  `read` TINYINT(1)  NOT NULL DEFAULT false ,
  `reported` TINYINT(1)  NOT NULL DEFAULT false ,
  `deleted` TINYINT(1)  NOT NULL DEFAULT false ,
  INDEX `fk_private_messages_users_users1` (`receiver` ASC) ,
  INDEX `fk_private_messages_users_private_messages1` (`private_message_id` ASC) ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_private_messages_users_private_messages1`
    FOREIGN KEY (`private_message_id` )
    REFERENCES `massidea2`.`private_messages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_private_messages_users_users1`
    FOREIGN KEY (`receiver` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`tags_users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`tags_users` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`tags_users` (
  `tag_id` INT NOT NULL ,
  `user_id` INT NOT NULL ,
  PRIMARY KEY (`tag_id`, `user_id`) ,
  INDEX `fk_tags_users_users1` (`user_id` ASC) ,
  INDEX `fk_tags_users_tags1` (`tag_id` ASC) ,
  CONSTRAINT `fk_tags_users_tags1`
    FOREIGN KEY (`tag_id` )
    REFERENCES `massidea2`.`tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tags_users_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`flags_users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`flags_users` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`flags_users` (
  `flag_id` INT NOT NULL ,
  `user_id` INT NOT NULL ,
  PRIMARY KEY (`flag_id`, `user_id`) ,
  INDEX `fk_flags_users_users1` (`user_id` ASC) ,
  INDEX `fk_flags_users_flags1` (`flag_id` ASC) ,
  CONSTRAINT `fk_flags_users_flags1`
    FOREIGN KEY (`flag_id` )
    REFERENCES `massidea2`.`flags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flags_users_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`user_roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`user_roles` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`user_roles` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`groups_users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`groups_users` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`groups_users` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `group_id` INT NOT NULL ,
  `user_id` INT NOT NULL ,
  `fovourite` TINYINT(1)  NULL ,
  `user_role_id` INT NOT NULL ,
  INDEX `fk_groups_users_users1` (`user_id` ASC) ,
  INDEX `fk_groups_users_groups1` (`group_id` ASC) ,
  INDEX `fk_groups_users_user_roles1` (`user_role_id` ASC) ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_groups_users_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_users_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_users_user_roles1`
    FOREIGN KEY (`user_role_id` )
    REFERENCES `massidea2`.`user_roles` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_users` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_users` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `campaign_id` INT NOT NULL ,
  `user_id` INT NOT NULL ,
  `favourite` TINYINT(1)  NULL DEFAULT false ,
  `user_role_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_campaigns_users_users1` (`user_id` ASC) ,
  INDEX `fk_campaigns_users_campaigns1` (`campaign_id` ASC) ,
  INDEX `fk_campaigns_users_user_roles1` (`user_role_id` ASC) ,
  CONSTRAINT `fk_campaigns_users_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_users_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_users_user_roles1`
    FOREIGN KEY (`user_role_id` )
    REFERENCES `massidea2`.`user_roles` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_groups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_groups` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_groups` (
  `campaign_id` INT NOT NULL ,
  `group_id` INT NOT NULL ,
  PRIMARY KEY (`campaign_id`, `group_id`) ,
  INDEX `fk_campaigns_groups_groups1` (`group_id` ASC) ,
  INDEX `fk_campaigns_groups_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_groups_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_groups_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_tags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_tags` (
  `campaign_id` INT NOT NULL ,
  `tag_id` INT NOT NULL ,
  PRIMARY KEY (`campaign_id`, `tag_id`) ,
  INDEX `fk_campaigns_tags_tags1` (`tag_id` ASC) ,
  INDEX `fk_campaigns_tags_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_tags_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_tags_tags1`
    FOREIGN KEY (`tag_id` )
    REFERENCES `massidea2`.`tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_private_messages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_private_messages` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_private_messages` (
  `campaign_id` INT NOT NULL ,
  `private_message_id` INT NOT NULL ,
  PRIMARY KEY (`campaign_id`, `private_message_id`) ,
  INDEX `fk_campaigns_private_messages_private_messages1` (`private_message_id` ASC) ,
  INDEX `fk_campaigns_private_messages_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_private_messages_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_private_messages_private_messages1`
    FOREIGN KEY (`private_message_id` )
    REFERENCES `massidea2`.`private_messages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`users_private_messages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`users_private_messages` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`users_private_messages` (
  `private_message_id` INT NOT NULL ,
  `sender` INT NOT NULL ,
  PRIMARY KEY (`private_message_id`, `sender`) ,
  INDEX `fk_private_messages_users1_users1` (`sender` ASC) ,
  INDEX `fk_private_messages_users1_private_messages1` (`private_message_id` ASC) ,
  CONSTRAINT `fk_private_messages_users1_private_messages1`
    FOREIGN KEY (`private_message_id` )
    REFERENCES `massidea2`.`private_messages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_private_messages_users1_users1`
    FOREIGN KEY (`sender` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_towns`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_towns` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_towns` (
  `campaign_id` INT NOT NULL ,
  `town_id` INT NOT NULL ,
  PRIMARY KEY (`campaign_id`, `town_id`) ,
  INDEX `fk_campaigns_towns_towns1` (`town_id` ASC) ,
  INDEX `fk_campaigns_towns_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_towns_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_towns_towns1`
    FOREIGN KEY (`town_id` )
    REFERENCES `massidea2`.`towns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_ratings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_ratings` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_ratings` (
  `campaign_id` INT NOT NULL ,
  `rating_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`campaign_id`, `rating_id`) ,
  INDEX `fk_campaigns_ratings_ratings1` (`rating_id` ASC) ,
  INDEX `fk_campaigns_ratings_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_ratings_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_ratings_ratings1`
    FOREIGN KEY (`rating_id` )
    REFERENCES `massidea2`.`ratings` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_flags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_flags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_flags` (
  `campaign_id` INT NOT NULL ,
  `flag_id` INT NOT NULL ,
  PRIMARY KEY (`campaign_id`, `flag_id`) ,
  INDEX `fk_campaigns_flags_flags1` (`flag_id` ASC) ,
  INDEX `fk_campaigns_flags_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_flags_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_flags_flags1`
    FOREIGN KEY (`flag_id` )
    REFERENCES `massidea2`.`flags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_files`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_files` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_files` (
  `campaign_id` INT NOT NULL ,
  `file_id` INT NOT NULL ,
  PRIMARY KEY (`campaign_id`, `file_id`) ,
  INDEX `fk_campaigns_files_files1` (`file_id` ASC) ,
  INDEX `fk_campaigns_files_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_files_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_files_files1`
    FOREIGN KEY (`file_id` )
    REFERENCES `massidea2`.`files` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_languages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_languages` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_languages` (
  `campaign_id` INT NOT NULL ,
  `language_id` INT NOT NULL ,
  PRIMARY KEY (`campaign_id`, `language_id`) ,
  INDEX `fk_campaigns_languages_languages1` (`language_id` ASC) ,
  INDEX `fk_campaigns_languages_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_languages_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_languages_languages1`
    FOREIGN KEY (`language_id` )
    REFERENCES `massidea2`.`languages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`linked_campaigns`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`linked_campaigns` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`linked_campaigns` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `from` INT NOT NULL ,
  `to` INT NOT NULL ,
  `created` DATETIME NULL ,
  INDEX `fk_campaigns_campaigns_campaigns2` (`to` ASC) ,
  INDEX `fk_campaigns_campaigns_campaigns1` (`from` ASC) ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_campaigns_campaigns_campaigns1`
    FOREIGN KEY (`from` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_campaigns_campaigns2`
    FOREIGN KEY (`to` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`linked_groups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`linked_groups` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`linked_groups` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `from` INT NOT NULL ,
  `to` INT NOT NULL ,
  `created` DATETIME NULL ,
  INDEX `fk_groups_groups_groups2` (`to` ASC) ,
  INDEX `fk_groups_groups_groups1` (`from` ASC) ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_groups_groups_groups1`
    FOREIGN KEY (`from` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_groups_groups2`
    FOREIGN KEY (`to` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`personal_tags_users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`personal_tags_users` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`personal_tags_users` (
  `personal_tag_id` INT NOT NULL ,
  `user_id` INT NOT NULL ,
  PRIMARY KEY (`personal_tag_id`, `user_id`) ,
  INDEX `fk_personal_tags_users_users1` (`user_id` ASC) ,
  INDEX `fk_personal_tags_users_personal_tags1` (`personal_tag_id` ASC) ,
  CONSTRAINT `fk_personal_tags_users_personal_tags1`
    FOREIGN KEY (`personal_tag_id` )
    REFERENCES `massidea2`.`personal_tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_personal_tags_users_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_personal_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_personal_tags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_personal_tags` (
  `campaign_id` INT NOT NULL ,
  `personal_tag_id` INT NOT NULL ,
  PRIMARY KEY (`campaign_id`, `personal_tag_id`) ,
  INDEX `fk_campaigns_personal_tags_personal_tags1` (`personal_tag_id` ASC) ,
  INDEX `fk_campaigns_personal_tags_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_personal_tags_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_personal_tags_personal_tags1`
    FOREIGN KEY (`personal_tag_id` )
    REFERENCES `massidea2`.`personal_tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_related_companies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_related_companies` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_related_companies` (
  `campaign_id` INT NOT NULL ,
  `related_company_id` INT NOT NULL ,
  PRIMARY KEY (`campaign_id`, `related_company_id`) ,
  INDEX `fk_campaigns_related_companies_related_companies1` (`related_company_id` ASC) ,
  INDEX `fk_campaigns_related_companies_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_related_companies_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_related_companies_related_companies1`
    FOREIGN KEY (`related_company_id` )
    REFERENCES `massidea2`.`related_companies` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`groups_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`groups_tags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`groups_tags` (
  `group_id` INT NOT NULL ,
  `tag_id` INT NOT NULL ,
  PRIMARY KEY (`group_id`, `tag_id`) ,
  INDEX `fk_groups_tags_tags1` (`tag_id` ASC) ,
  INDEX `fk_groups_tags_groups1` (`group_id` ASC) ,
  CONSTRAINT `fk_groups_tags_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_tags_tags1`
    FOREIGN KEY (`tag_id` )
    REFERENCES `massidea2`.`tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`groups_personal_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`groups_personal_tags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`groups_personal_tags` (
  `group_id` INT NOT NULL ,
  `personal_tag_id` INT NOT NULL ,
  PRIMARY KEY (`group_id`, `personal_tag_id`) ,
  INDEX `fk_groups_personal_tags_personal_tags1` (`personal_tag_id` ASC) ,
  INDEX `fk_groups_personal_tags_groups1` (`group_id` ASC) ,
  CONSTRAINT `fk_groups_personal_tags_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_personal_tags_personal_tags1`
    FOREIGN KEY (`personal_tag_id` )
    REFERENCES `massidea2`.`personal_tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`groups_private_messages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`groups_private_messages` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`groups_private_messages` (
  `group_id` INT NOT NULL ,
  `private_message_id` INT NOT NULL ,
  PRIMARY KEY (`group_id`, `private_message_id`) ,
  INDEX `fk_groups_private_messages_private_messages1` (`private_message_id` ASC) ,
  INDEX `fk_groups_private_messages_groups1` (`group_id` ASC) ,
  CONSTRAINT `fk_groups_private_messages_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_private_messages_private_messages1`
    FOREIGN KEY (`private_message_id` )
    REFERENCES `massidea2`.`private_messages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`groups_languages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`groups_languages` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`groups_languages` (
  `group_id` INT NOT NULL ,
  `language_id` INT NOT NULL ,
  PRIMARY KEY (`group_id`, `language_id`) ,
  INDEX `fk_groups_languages_languages1` (`language_id` ASC) ,
  INDEX `fk_groups_languages_groups1` (`group_id` ASC) ,
  CONSTRAINT `fk_groups_languages_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_languages_languages1`
    FOREIGN KEY (`language_id` )
    REFERENCES `massidea2`.`languages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`files_groups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`files_groups` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`files_groups` (
  `file_id` INT NOT NULL ,
  `group_id` INT NOT NULL ,
  PRIMARY KEY (`file_id`, `group_id`) ,
  INDEX `fk_files_groups_groups1` (`group_id` ASC) ,
  INDEX `fk_files_groups_files1` (`file_id` ASC) ,
  CONSTRAINT `fk_files_groups_files1`
    FOREIGN KEY (`file_id` )
    REFERENCES `massidea2`.`files` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_files_groups_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`countries_groups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`countries_groups` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`countries_groups` (
  `country_id` INT NOT NULL ,
  `group_id` INT NOT NULL ,
  PRIMARY KEY (`country_id`, `group_id`) ,
  INDEX `fk_countries_groups_groups1` (`group_id` ASC) ,
  INDEX `fk_countries_groups_countries1` (`country_id` ASC) ,
  CONSTRAINT `fk_countries_groups_countries1`
    FOREIGN KEY (`country_id` )
    REFERENCES `massidea2`.`countries` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_countries_groups_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`groups_ratings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`groups_ratings` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`groups_ratings` (
  `group_id` INT NOT NULL ,
  `rating_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`group_id`, `rating_id`) ,
  INDEX `fk_groups_ratings_ratings1` (`rating_id` ASC) ,
  INDEX `fk_groups_ratings_groups1` (`group_id` ASC) ,
  CONSTRAINT `fk_groups_ratings_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_ratings_ratings1`
    FOREIGN KEY (`rating_id` )
    REFERENCES `massidea2`.`ratings` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`groups_towns`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`groups_towns` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`groups_towns` (
  `group_id` INT NOT NULL ,
  `town_id` INT NOT NULL ,
  PRIMARY KEY (`group_id`, `town_id`) ,
  INDEX `fk_groups_towns_towns1` (`town_id` ASC) ,
  INDEX `fk_groups_towns_groups1` (`group_id` ASC) ,
  CONSTRAINT `fk_groups_towns_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_towns_towns1`
    FOREIGN KEY (`town_id` )
    REFERENCES `massidea2`.`towns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`groups_related_companies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`groups_related_companies` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`groups_related_companies` (
  `group_id` INT NOT NULL ,
  `related_company_id` INT NOT NULL ,
  PRIMARY KEY (`group_id`, `related_company_id`) ,
  INDEX `fk_groups_related_companies_related_companies1` (`related_company_id` ASC) ,
  INDEX `fk_groups_related_companies_groups1` (`group_id` ASC) ,
  CONSTRAINT `fk_groups_related_companies_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_related_companies_related_companies1`
    FOREIGN KEY (`related_company_id` )
    REFERENCES `massidea2`.`related_companies` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`inbox_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`inbox_tags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`inbox_tags` (
  `personal_tag_id` INT NOT NULL ,
  `private_messages_user_id` INT NOT NULL ,
  PRIMARY KEY (`personal_tag_id`, `private_messages_user_id`) ,
  INDEX `fk_personal_tags_private_messages_users_private_messages_users1` (`private_messages_user_id` ASC) ,
  INDEX `fk_personal_tags_private_messages_users_personal_tags1` (`personal_tag_id` ASC) ,
  CONSTRAINT `fk_personal_tags_private_messages_users_personal_tags1`
    FOREIGN KEY (`personal_tag_id` )
    REFERENCES `massidea2`.`personal_tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_personal_tags_private_messages_users_private_messages_users1`
    FOREIGN KEY (`private_messages_user_id` )
    REFERENCES `massidea2`.`private_messages_users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`outbox_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`outbox_tags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`outbox_tags` (
  `private_message_id` INT NOT NULL ,
  `personal_tag_id` INT NOT NULL ,
  PRIMARY KEY (`private_message_id`, `personal_tag_id`) ,
  INDEX `fk_private_messages_personal_tags_personal_tags1` (`personal_tag_id` ASC) ,
  INDEX `fk_private_messages_personal_tags_private_messages1` (`private_message_id` ASC) ,
  CONSTRAINT `fk_private_messages_personal_tags_private_messages1`
    FOREIGN KEY (`private_message_id` )
    REFERENCES `massidea2`.`private_messages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_private_messages_personal_tags_personal_tags1`
    FOREIGN KEY (`personal_tag_id` )
    REFERENCES `massidea2`.`personal_tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`inbox_flags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`inbox_flags` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`inbox_flags` (
  `flag_id` INT NOT NULL ,
  `private_messages_user_id` INT NOT NULL ,
  PRIMARY KEY (`flag_id`, `private_messages_user_id`) ,
  INDEX `fk_flags_private_messages_users_private_messages_users1` (`private_messages_user_id` ASC) ,
  INDEX `fk_flags_private_messages_users_flags1` (`flag_id` ASC) ,
  CONSTRAINT `fk_flags_private_messages_users_flags1`
    FOREIGN KEY (`flag_id` )
    REFERENCES `massidea2`.`flags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flags_private_messages_users_private_messages_users1`
    FOREIGN KEY (`private_messages_user_id` )
    REFERENCES `massidea2`.`private_messages_users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`readers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`readers` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`readers` (
  `id` INT NOT NULL ,
  `created` DATETIME NULL ,
  `modified` DATETIME NULL ,
  `content_id` INT NOT NULL ,
  `user_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_readers_contents1` (`content_id` ASC) ,
  INDEX `fk_readers_users1` (`user_id` ASC) ,
  CONSTRAINT `fk_readers_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_readers_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`links`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`links` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`links` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `url` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_links`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_links` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_links` (
  `campaign_id` INT NOT NULL ,
  `link_id` INT NOT NULL ,
  PRIMARY KEY (`campaign_id`, `link_id`) ,
  INDEX `fk_campaigns_links_links1` (`link_id` ASC) ,
  INDEX `fk_campaigns_links_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_campaigns_links_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_links_links1`
    FOREIGN KEY (`link_id` )
    REFERENCES `massidea2`.`links` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`links_users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`links_users` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`links_users` (
  `link_id` INT NOT NULL ,
  `user_id` INT NOT NULL ,
  PRIMARY KEY (`link_id`, `user_id`) ,
  INDEX `fk_links_users_users1` (`user_id` ASC) ,
  INDEX `fk_links_users_links1` (`link_id` ASC) ,
  CONSTRAINT `fk_links_users_links1`
    FOREIGN KEY (`link_id` )
    REFERENCES `massidea2`.`links` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_links_users_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`contents_links`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`contents_links` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`contents_links` (
  `content_id` INT NOT NULL ,
  `link_id` INT NOT NULL ,
  PRIMARY KEY (`content_id`, `link_id`) ,
  INDEX `fk_contents_links_links1` (`link_id` ASC) ,
  INDEX `fk_contents_links_contents1` (`content_id` ASC) ,
  CONSTRAINT `fk_contents_links_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_links_links1`
    FOREIGN KEY (`link_id` )
    REFERENCES `massidea2`.`links` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`groups_links`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`groups_links` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`groups_links` (
  `group_id` INT NOT NULL ,
  `link_id` INT NOT NULL ,
  PRIMARY KEY (`group_id`, `link_id`) ,
  INDEX `fk_groups_links_links1` (`link_id` ASC) ,
  INDEX `fk_groups_links_groups1` (`group_id` ASC) ,
  CONSTRAINT `fk_groups_links_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_links_links1`
    FOREIGN KEY (`link_id` )
    REFERENCES `massidea2`.`links` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`links_private_messages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`links_private_messages` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`links_private_messages` (
  `link_id` INT NOT NULL ,
  `private_message_id` INT NOT NULL ,
  PRIMARY KEY (`link_id`, `private_message_id`) ,
  INDEX `fk_links_private_messages_private_messages1` (`private_message_id` ASC) ,
  INDEX `fk_links_private_messages_links1` (`link_id` ASC) ,
  CONSTRAINT `fk_links_private_messages_links1`
    FOREIGN KEY (`link_id` )
    REFERENCES `massidea2`.`links` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_links_private_messages_private_messages1`
    FOREIGN KEY (`private_message_id` )
    REFERENCES `massidea2`.`private_messages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`groups_requests`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`groups_requests` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`groups_requests` (
  `user_id` INT NOT NULL ,
  `group_id` INT NOT NULL ,
  `message` VARCHAR(45) NULL ,
  PRIMARY KEY (`user_id`, `group_id`) ,
  INDEX `fk_users_groups_groups1` (`group_id` ASC) ,
  INDEX `fk_users_groups_users1` (`user_id` ASC) ,
  CONSTRAINT `fk_users_groups_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`profiles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`profiles` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`profiles` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NOT NULL ,
  `key` VARCHAR(255) NOT NULL ,
  `value` TEXT NULL ,
  `public` TINYINT(1)  NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_profiles_users1` (`user_id` ASC) ,
  CONSTRAINT `fk_profiles_users1`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`campaigns_comments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`campaigns_comments` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`campaigns_comments` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NOT NULL ,
  `parent_id` INT NULL ,
  `lft` INT NULL ,
  `rght` INT NULL ,
  `comment` TEXT NULL ,
  `modified` DATETIME NULL ,
  `created` DATETIME NULL ,
  `campaign_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_comments_users1` (`user_id` ASC) ,
  INDEX `fk_campaigns_comments_campaigns1` (`campaign_id` ASC) ,
  CONSTRAINT `fk_comments_users10`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_comments_campaigns1`
    FOREIGN KEY (`campaign_id` )
    REFERENCES `massidea2`.`campaigns` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`comments_users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`comments_users` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`comments_users` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NOT NULL ,
  `parent_id` INT NULL ,
  `lft` INT NULL ,
  `rght` INT NULL ,
  `comment` TEXT NULL ,
  `modified` DATETIME NULL ,
  `created` DATETIME NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_comments_users1` (`user_id` ASC) ,
  CONSTRAINT `fk_comments_users100`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`comments_groups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`comments_groups` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`comments_groups` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NOT NULL ,
  `parent_id` INT NULL ,
  `lft` INT NULL ,
  `rght` INT NULL ,
  `comment` TEXT NULL ,
  `modified` DATETIME NULL ,
  `created` DATETIME NULL ,
  `group_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_comments_users1` (`user_id` ASC) ,
  INDEX `fk_groups_comments_groups1` (`group_id` ASC) ,
  CONSTRAINT `fk_comments_users101`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_comments_groups1`
    FOREIGN KEY (`group_id` )
    REFERENCES `massidea2`.`groups` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `massidea2`.`comments_contents`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `massidea2`.`comments_contents` ;

CREATE  TABLE IF NOT EXISTS `massidea2`.`comments_contents` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NOT NULL ,
  `parent_id` INT NULL ,
  `lft` INT NULL ,
  `rght` INT NULL ,
  `comment` TEXT NULL ,
  `modified` DATETIME NULL ,
  `created` DATETIME NULL ,
  `content_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_comments_users1` (`user_id` ASC) ,
  INDEX `fk_comments_contents_contents1` (`content_id` ASC) ,
  CONSTRAINT `fk_comments_users102`
    FOREIGN KEY (`user_id` )
    REFERENCES `massidea2`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_contents_contents1`
    FOREIGN KEY (`content_id` )
    REFERENCES `massidea2`.`contents` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
