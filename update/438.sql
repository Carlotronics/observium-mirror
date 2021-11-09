ALTER TABLE `ports` CHANGE `ifInUcastPkts_rate` `ifInUcastPkts_rate` BIGINT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifOutUcastPkts_rate` `ifOutUcastPkts_rate` BIGINT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifUcastPkts_rate` `ifUcastPkts_rate` BIGINT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifErrors_rate` `ifErrors_rate` FLOAT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifInNUcastPkts_rate` `ifInNUcastPkts_rate` INT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifOutNUcastPkts_rate` `ifOutNUcastPkts_rate` INT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifInBroadcastPkts_rate` `ifInBroadcastPkts_rate` INT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifOutBroadcastPkts_rate` `ifOutBroadcastPkts_rate` INT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifInMulticastPkts_rate` `ifInMulticastPkts_rate` INT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifOutMulticastPkts_rate` `ifOutMulticastPkts_rate` INT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifInDiscards_rate` `ifInDiscards_rate` FLOAT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifOutDiscards_rate` `ifOutDiscards_rate` FLOAT UNSIGNED NOT NULL DEFAULT '0', CHANGE `ifDiscards_rate` `ifDiscards_rate` FLOAT UNSIGNED NOT NULL DEFAULT '0';
