CREATE TABLE `entPhysical-state` (`entPhysical_state_id` int(11) NOT NULL, `device_id` int(11) NOT NULL, `entPhysicalIndex` varchar(64) NOT NULL, `subindex` varchar(64) DEFAULT NULL, `group` varchar(64) NOT NULL, `key` varchar(64) NOT NULL, `value` varchar(255) NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `entPhysical-state` ADD PRIMARY KEY (`entPhysical_state_id`), ADD KEY `device_id_index` (`device_id`,`entPhysicalIndex`);
