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

include_once($config['html_dir']."/includes/graphs/common.inc.php");

$rrd_filename = get_rrd_path($device, "vpdn-l2tp.rrd");

$stats = array('tunnels');

$i=0;
foreach ($stats as $stat)
{
  $i++;
  $rrd_list[$i]['filename'] = $rrd_filename;
  $rrd_list[$i]['ds'] = $stat;
}

$colours='mixed';

$nototal = 1;
$simple_rrd = 1;

include($config['html_dir']."/includes/graphs/generic_multi_line.inc.php");

// EOF

