CREATE TABLE `admin_details` (
  `admin_id` INT(11) NOT NULL,
  `prefixes` VARCHAR(150) NULL,
  `given_name` VARCHAR(150) NOT NULL,
  `middle_name` VARCHAR(150) NOT NULL,
  `surname` VARCHAR(150) NULL,
  `date_of_birth` DATE NULL,
  `gender` TINYINT(4) NULL DEFAULT 0 COMMENT '0 - prefer not to say, 1 - male, 2 - female',
  PRIMARY KEY (`user_id`)
);