<?php

/**
 * Observium
 *
 *   This file is part of Observium.
 *
 * @package    observium
 * @subpackage graphs
 * @copyright  (C) 2006-2013 Adam Armstrong, (C) 2013-2019 Observium Limited
 *
 */

if (is_numeric($vars['id']))
{
  $disk = dbFetchRow("SELECT * FROM `ucd_diskio` AS U, `devices` AS D WHERE U.diskio_id = ? AND U.device_id = D.device_id", array($vars['id']));

  if (is_numeric($disk['device_id']) && ($auth || device_permitted($disk['device_id'])))
  {
    $device = device_by_id_cache($disk['device_id']);

    $rrd_filename = get_rrd_path($device, "ucd_diskio-" . $disk['diskio_descr'] . ".rrd");

    $title  = generate_device_link($device);
    $title .= " :: Disk :: " . escape_html($disk['diskio_descr']);
    $auth = TRUE;
  }
}

// EOF
