<?php

/**
 * Observium
 *
 *   This file is part of Observium.
 *
 * @package    observium
 * @subpackage poller
 * @copyright  (C) 2006-2013 Adam Armstrong, (C) 2013-2019 Observium Limited
 *
 */

// Exit if already founded fdb entries
if (count($fdbs)) { return; }

//  hwDynFdbPort[0:e0:4c:xx:xx:xx][99][0] 7
$entries = snmpwalk_cache_threepart_oid($device, 'hwDynFdbPort', array(), 'HUAWEI-L2MAM-MIB',  NULL, OBS_SNMP_ALL_TABLE);
print_debug_vars($entries);

foreach($entries as $mac => $data1)
{
  foreach ($data1 as $vlan => $data2)
  {
    foreach ($data2 as $vsi => $entry)
    {

      // Make sure the ifIndex is actually valid
      if ($entry['hwDynFdbPort'] != 0 && is_array($port_ifIndex_table[$entry['hwDynFdbPort']]))
      {
        $port = $port_ifIndex_table[$entry['hwDynFdbPort']];
        $mac = mac_zeropad($mac);

        $data = array();

        $data['port_id']    = $port['port_id'];
        $data['port_index'] = $entry['hwDynFdbPort'];
        $data['fdb_status'] = 'learned'; // Hardcoded for this MIB

        $fdbs[$vlan][$mac] = $data;
      }

    }

  }
}

unset($entries);

// EOF