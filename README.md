puppet-gerrit
=============
Puppet-Module for gerrit-Installation

Known issues
============
- When you choose a different database than the default, the init script needs to be run after the configfile has been generated. As a workaround, you can remove ${gerrit_home}/${gerrit_site_name}/bin/gerrit.sh to restart the init and make sure that the database tables are created.

Example config
==============

  class { 'gerrit':
    gerrit_database_type     => 'PostgreSQL',
    gerrit_database_hostname => 'db01.example.com',
    gerrit_database_database => 'gerrit_prod',
    gerrit_database_username => 'gerrit',
    gerrit_database_password => 'supersecret',
    httpd_listen_url         => 'proxy-http://127.0.0.1:8080/',
  }
