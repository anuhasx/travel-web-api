CREATE TABLE `admin_sessions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `log_id` INT(11) NOT NULL,
  `ip_address` VARCHAR(150) NOT NULL,
  `device` INT(11) NOT NULL,
  `location` INT(11) NOT NULL,
  `status` TINYINT(4) NOT NULL DEFAULT 0 COMMENT '0 - pending, 1 - in session, 3 - expired',
  `logged_at` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`)
);
