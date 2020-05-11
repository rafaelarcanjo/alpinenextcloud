<?php
$CONFIG = array (
  'datadirectory' => '/var/lib/nextcloud/data',
  'logfile' => '/var/log/nextcloud/nextcloud.log',
  'apps_paths' =>
  array (
    0 =>
    array (
      'path' => '/usr/share/webapps/nextcloud/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 =>
    array (
      'path' => '/var/lib/nextcloud/apps',
      'url' => '/apps-appstore',
      'writable' => true,
    ),
  ),
  'updatechecker' => false,
  'check_for_working_htaccess' => false,
  'installed' => true,
  'instanceid' => 'oc88r8p0o7rg',
  'passwordsalt' => 'hUiZFZAoiRJFbF9Zq4C4Y48rRu5Mwi',
  'secret' => 'jyq8ngdJJ5TuXFxLFdESpdGebzKoVk9OCPquC22wAZTjbpj0',
  'trusted_domains' =>
  array (
    0 => 'nomes.space',
  ),
  'dbtype' => 'sqlite3',
  'version' => '17.0.6.2',
  'overwrite.cli.url' => 'https://nomes.space',
  'app.mail.verify-tls-peer' => false,
);