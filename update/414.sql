ALTER TABLE `users` CHANGE `username` `username` VARCHAR(72) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, CHANGE `password` `password` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL, CHANGE `realname` `realname` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, CHANGE `email` `email` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, CHANGE `descr` `descr` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
