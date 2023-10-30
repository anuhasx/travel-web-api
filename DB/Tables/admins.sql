CREATE TABLE `admins` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `profile` TEXT NULL,
  `password` VARCHAR(100) NOT NULL,
  `role_id` INT(11) NOT NULL,
  `is_active` TINYINT(4) NOT NULL DEFAULT 0,
  `is_verified` TINYINT(4) NOT NULL DEFAULT 0,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  `banded_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`)
 );
