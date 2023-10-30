CREATE TABLE `admin_logs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `admin_id` INT(11) NOT NULL,
  `ip_address` VARCHAR(50) NOT NULL,
  `session_id` VARCHAR(100) NOT NULL,
  `device` INT(11) NOT NULL,
  `location` INT(11) NOT NULL,
  `service` INT(11) NOT NULL DEFAULT 0 COMMENT '0 - vvecon, else - any other service',
  `status` TINYINT(4) NOT NULL DEFAULT 0 COMMENT '0 - not logged in, 1 - logged in, 2 - logged out',
  `login_at` DATETIME NOT NULL,
  `logout_at` DATETIME NULL,
  `last_csi` INT(11) NULL,
  PRIMARY KEY (`id`)
 );
