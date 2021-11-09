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

if (!empty($agent_data['app']['nfsd']))
{
  $app_id = discover_app($device, 'nfsd');

  $rrd_filename = "app-nfsd-$app_id.rrd";

  $nfsLabel = array();

  $nfsLabel['rc'] = array(
    "retrans",  "miss", "nocache"
  );

  $nfsLabel['io'] = array(
    "r_bytes", "w_bytes"
  );

  $nfsLabel['net'] = array(
    "n_count", "u_count", "t_data", "t_conn"
  );

  $nfsLabel['rpc'] = array(
    "calls", "badcalls", "badclnt", "xdrcall"
  );

  $nfsLabel['proc3'] = array(
    "null", "getattr", "setattr", "lookup", "access", "readlink",
    "read", "write", "create", "mkdir", "symlink", "mknod",
    "remove", "rmdir", "rename", "link", "readdr", "readdirplus",
    "fsstat", "fsinfo", "pathconf", "commit"
  );

  $datas = array();

  foreach (explode("\n", $agent_data['app']['nfsd']) as $line)
  {
    $tokens = explode(" ", $line);
    if (isset($tokens[0]) && isset($nfsLabel[strtolower($tokens[0])]))
    {
      $base = strtolower($tokens[0]);
      array_shift($tokens);
      array_shift($tokens);
      foreach ($tokens as $k => $v)
      {
        $datas[$base.($nfsLabel[$base][$k])] = $v;
      }
    }
  }


  update_application($app_id, $datas);
  rrdtool_update_ng($device, 'nfsd', $datas, $app_id);

  unset($app_id, $nfsLabel, $datas, $tokens, $base, $k, $v);
}

// EOF
