CREATE TABLE `groups` (  `group_id` int(11) NOT NULL AUTO_INCREMENT,  `entity_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,  `group_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,  `group_descr` varchar(128) COLLATE utf8_unicode_ci NOT NULL,  `group_ignore` tinyint(4) NOT NULL,  `group_ignore_until` int(1) NOT NULL DEFAULT '0',  PRIMARY KEY (`group_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
CREATE TABLE `groups_assoc` (  `devgrp_assoc_id` int(11) NOT NULL AUTO_INCREMENT,  `devgrp_id` int(11) NOT NULL,  `entity_type` varchar(64) CHARACTER SET utf8 NOT NULL,  `device_attributes` text COLLATE utf8_unicode_ci,  `attributes` text CHARACTER SET utf8,  PRIMARY KEY (`devgrp_assoc_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
CREATE TABLE `group_table` (  `group_table_id` int(11) NOT NULL AUTO_INCREMENT,  `group_id` int(11) NOT NULL,  `entity_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,  `entity_id` int(11) NOT NULL,  `group_assocs` varchar(64) COLLATE utf8_unicode_ci NOT NULL,  PRIMARY KEY (`group_table_id`),  UNIQUE KEY `alert_id_2` (`group_id`,`entity_type`,`entity_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
