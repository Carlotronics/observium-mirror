ALTER TABLE `ports`  DROP `ifInUcastPkts`,  DROP `ifInUcastPkts_prev`,  DROP `ifInUcastPkts_delta`,  DROP `ifInUcastPkts_rate`,  DROP `ifOutUcastPkts`,  DROP `ifOutUcastPkts_prev`,  DROP `ifOutUcastPkts_delta`,  DROP `ifOutUcastPkts_rate`,  DROP `ifInErrors`,  DROP `ifInErrors_prev`,  DROP `ifInErrors_delta`,  DROP `ifInErrors_rate`,  DROP `ifOutErrors`,  DROP `ifOutErrors_prev`,  DROP `ifOutErrors_delta`,  DROP `ifOutErrors_rate`,  DROP `ifInOctets`,  DROP `ifInOctets_prev`,  DROP `ifInOctets_delta`,  DROP `ifInOctets_rate`,  DROP `ifOutOctets`,  DROP `ifOutOctets_prev`,  DROP `ifOutOctets_delta`,  DROP `ifOutOctets_rate`,  DROP `poll_time`,  DROP `poll_prev`,  DROP `poll_period`;
CREATE TABLE IF NOT EXISTS `ports-state` (  `port_id` int(11) NOT NULL,  `ifInUcastPkts` bigint(20) DEFAULT NULL,  `ifInUcastPkts_delta` bigint(20) DEFAULT NULL,  `ifInUcastPkts_rate` int(11) DEFAULT NULL,  `ifOutUcastPkts` bigint(20) DEFAULT NULL,  `ifOutUcastPkts_delta` bigint(20) DEFAULT NULL,  `ifOutUcastPkts_rate` int(11) DEFAULT NULL,  `ifInErrors` bigint(20) DEFAULT NULL,  `ifInErrors_delta` bigint(20) DEFAULT NULL,  `ifInErrors_rate` int(11) DEFAULT NULL,  `ifOutErrors` bigint(20) DEFAULT NULL,  `ifOutErrors_delta` bigint(20) DEFAULT NULL,  `ifOutErrors_rate` int(11) DEFAULT NULL,  `ifOctets_rate` bigint(20) DEFAULT NULL,  `ifUcastPkts_rate` bigint(20) DEFAULT NULL,  `ifErrors_rate` int(11) DEFAULT NULL,  `ifInOctets` bigint(20) DEFAULT NULL,  `ifInOctets_delta` bigint(20) DEFAULT NULL,  `ifInOctets_rate` bigint(11) DEFAULT NULL,  `ifOutOctets` bigint(20) DEFAULT NULL,  `ifOutOctets_delta` bigint(20) DEFAULT NULL,  `ifOutOctets_rate` bigint(11) DEFAULT NULL,  `poll_time` int(11) DEFAULT NULL,  `poll_period` int(11) DEFAULT NULL,  PRIMARY KEY (`port_id`)) ENGINE=MEMORY  DEFAULT CHARSET=latin1;
ALTER TABLE  `bgpPeers_cbgp` ADD  `cbgp_id` INT NOT NULL AUTO_INCREMENT FIRST ,ADD PRIMARY KEY (  `cbgp_id` );
ALTER TABLE  `bgpPeers_cbgp` DROP  `AcceptedPrefixes` ,DROP  `DeniedPrefixes` ,DROP  `PrefixAdminLimit` ,DROP  `PrefixThreshold` ,DROP  `PrefixClearThreshold` ,DROP  `AdvertisedPrefixes` ,DROP  `SuppressedPrefixes` ,DROP  `WithdrawnPrefixes` ;
CREATE TABLE IF NOT EXISTS `bgpPeers_cbgp-state` (  `cbgp_id` int(11) NOT NULL,  `AcceptedPrefixes` int(11) NOT NULL,  `DeniedPrefixes` int(11) NOT NULL,  `PrefixAdminLimit` int(11) NOT NULL,  `PrefixThreshold` int(11) NOT NULL,  `PrefixClearThreshold` int(11) NOT NULL,  `AdvertisedPrefixes` int(11) NOT NULL,  `SuppressedPrefixes` int(11) NOT NULL,  `WithdrawnPrefixes` int(11) NOT NULL,  UNIQUE KEY `unique_index` (`cbgp_id`)) ENGINE=MEMORY DEFAULT CHARSET=latin1;
ALTER TABLE `bgpPeers`  DROP `bgpPeerInUpdates`,  DROP `bgpPeerOutUpdates`,  DROP `bgpPeerInTotalMessages`,  DROP `bgpPeerOutTotalMessages`,  DROP `bgpPeerFsmEstablishedTime`,  DROP `bgpPeerInUpdateElapsedTime`;
CREATE TABLE IF NOT EXISTS `bgpPeers-state` (  `bgpPeer_id` int(11) NOT NULL,  `bgpPeerInUpdates` int(11) DEFAULT NULL,  `bgpPeerOutUpdates` int(11) DEFAULT NULL,  `bgpPeerInTotalMessages` int(11) DEFAULT NULL,  `bgpPeerOutTotalMessages` int(11) DEFAULT NULL,  `bgpPeerFsmEstablishedTime` int(11) DEFAULT NULL,  `bgpPeerInUpdateElapsedTime` int(11) DEFAULT NULL,  `bgpPeerInUpdates_delta` int(11) DEFAULT NULL,  `bgpPeerInUpdates_rate` int(11) DEFAULT NULL,  `bgpPeerOutUpdates_delta` int(11) DEFAULT NULL,  `bgpPeerOutUpdates_rate` int(11) DEFAULT NULL,  `bgpPeerInTotalMessages_delta` int(11) DEFAULT NULL,  `bgpPeerInTotalMessages_rate` int(11) DEFAULT NULL,  `bgpPeerOutTotalMessages_delta` int(11) DEFAULT NULL,  `bgpPeerOutTotalMessages_rate` int(11) DEFAULT NULL,  PRIMARY KEY (`bgpPeer_id`)) ENGINE=MEMORY  DEFAULT CHARSET=latin1;
ALTER TABLE `access_points`  DROP `channel`,  DROP `txpow`,  DROP `radioutil`,  DROP `numasoclients`,  DROP `nummonclients`,  DROP `numactbssid`,  DROP `nummonbssid`,  DROP `interference`;
CREATE TABLE IF NOT EXISTS `access_points-state` (  `accesspoint_id` int(11) NOT NULL,  `channel` tinyint(4) unsigned NOT NULL DEFAULT '0',  `txpow` tinyint(4) NOT NULL DEFAULT '0',  `radioutil` tinyint(4) NOT NULL DEFAULT '0',  `numasoclients` smallint(6) NOT NULL DEFAULT '0',  `nummonclients` smallint(6) NOT NULL DEFAULT '0',  `numactbssid` tinyint(4) NOT NULL DEFAULT '0',  `nummonbssid` tinyint(4) NOT NULL DEFAULT '0',  `interference` tinyint(3) unsigned NOT NULL,  PRIMARY KEY (`accesspoint_id`)) ENGINE=MEMORY DEFAULT CHARSET=latin1 COMMENT='Access Points';
ALTER TABLE  `mac_accounting` DROP  `bps_out` ,DROP  `bps_in` ,DROP  `cipMacHCSwitchedBytes_input` ,DROP  `cipMacHCSwitchedBytes_input_prev` ,DROP  `cipMacHCSwitchedBytes_input_delta` ,DROP  `cipMacHCSwitchedBytes_input_rate` ,DROP  `cipMacHCSwitchedBytes_output` ,DROP  `cipMacHCSwitchedBytes_output_prev` ,DROP  `cipMacHCSwitchedBytes_output_delta` ,DROP  `cipMacHCSwitchedBytes_output_rate` ,DROP  `cipMacHCSwitchedPkts_input` ,DROP  `cipMacHCSwitchedPkts_input_prev` ,DROP  `cipMacHCSwitchedPkts_input_delta` ,DROP  `cipMacHCSwitchedPkts_input_rate` ,DROP  `cipMacHCSwitchedPkts_output` ,DROP  `cipMacHCSwitchedPkts_output_prev` ,DROP  `cipMacHCSwitchedPkts_output_delta` ,DROP  `cipMacHCSwitchedPkts_output_rate` ,DROP  `poll_time` ,DROP  `poll_prev` ,DROP  `poll_period` ;
CREATE TABLE IF NOT EXISTS `mac_accounting-state` (  `ma_id` int(11) NOT NULL,  `cipMacHCSwitchedBytes_input` bigint(20) DEFAULT NULL,  `cipMacHCSwitchedBytes_input_delta` bigint(20) DEFAULT NULL,  `cipMacHCSwitchedBytes_input_rate` int(11) DEFAULT NULL,  `cipMacHCSwitchedBytes_output` bigint(20) DEFAULT NULL,  `cipMacHCSwitchedBytes_output_delta` bigint(20) DEFAULT NULL,  `cipMacHCSwitchedBytes_output_rate` int(11) DEFAULT NULL,  `cipMacHCSwitchedPkts_input` bigint(20) DEFAULT NULL,  `cipMacHCSwitchedPkts_input_delta` bigint(20) DEFAULT NULL,  `cipMacHCSwitchedPkts_input_rate` int(11) DEFAULT NULL,  `cipMacHCSwitchedPkts_output` bigint(20) DEFAULT NULL,  `cipMacHCSwitchedPkts_output_delta` bigint(20) DEFAULT NULL,  `cipMacHCSwitchedPkts_output_rate` int(11) DEFAULT NULL,  `poll_time` int(11) DEFAULT NULL,  `poll_period` int(11) DEFAULT NULL,  PRIMARY KEY (`ma_id`)) ENGINE=MEMORY  DEFAULT CHARSET=latin1;
ALTER TABLE `mempools`  DROP `mempool_perc`,  DROP `mempool_used`,  DROP `mempool_free`,  DROP `mempool_total`,  DROP `mempool_largestfree`,  DROP `mempool_lowestfree`;
CREATE TABLE IF NOT EXISTS `mempools-state` (  `mempool_id` int(11) NOT NULL,  `mempool_perc` int(11) NOT NULL,  `mempool_used` bigint(16) NOT NULL,  `mempool_free` bigint(16) NOT NULL,  `mempool_total` bigint(16) NOT NULL,  `mempool_largestfree` bigint(16) DEFAULT NULL,  `mempool_lowestfree` bigint(16) DEFAULT NULL,  PRIMARY KEY (`mempool_id`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
ALTER TABLE  `mempools-state` ADD  `mempool_polled` INT NOT NULL AFTER  `mempool_id`;
ALTER TABLE  `sensors` DROP  `sensor_current`;
CREATE TABLE IF NOT EXISTS `sensors-state` (  `sensor_id` int(11) NOT NULL,  `sensor_value` int(11) NOT NULL,  PRIMARY KEY (`sensor_id`)) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
ALTER TABLE  `sensors-state` ADD  `sensor_polled` INT NOT NULL;
ALTER TABLE  `processors` DROP  `processor_usage`;
CREATE TABLE IF NOT EXISTS `processors-state` (  `processor_id` int(11) NOT NULL,  `processor_usage` int(11) NOT NULL,  `processor_polled` int(11) NOT NULL,  PRIMARY KEY (`processor_id`)) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Processor Usage';
ALTER TABLE  `storage` DROP  `storage_size` ,DROP  `storage_units` ,DROP  `storage_used` ,DROP  `storage_free` ,DROP  `storage_perc` ;
CREATE TABLE IF NOT EXISTS `ucd_diskio-state` ( `diskio_id` int(11) NOT NULL,  `diskIONReadX` int(11) NOT NULL,  `diskIONReadX_rate` int(11) NOT NULL,  `diskIONWrittenX` int(11) NOT NULL,  `diskIONWrittenX_rate` int(11) NOT NULL,  `diskIOReads` int(11) NOT NULL,  `diskIOReads_rate` int(11) NOT NULL,  `diskIOWrites` int(11) NOT NULL,  `diskIOWrites_rate` int(11) NOT NULL,  `diskio_polled` int(11) NOT NULL,  PRIMARY KEY (`diskio_id`)) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE IF NOT EXISTS `storage-state` (  `storage_id` int(11) NOT NULL,  `storage_polled` int(11) NOT NULL,  `storage_size` bigint(20) NOT NULL,  `storage_units` int(11) NOT NULL,  `storage_used` bigint(20) NOT NULL,  `storage_free` bigint(20) NOT NULL,  `storage_perc` int(11) NOT NULL,  PRIMARY KEY (`storage_id`)) ENGINE=MyISAM DEFAULT CHARSET=latin1;

