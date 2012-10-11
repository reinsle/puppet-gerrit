# Class: gerrit::params
class gerrit::params {
  # Version of gerrit
  $gerrit_version = $::operatingsystem ? {
    default => '2.4.2',
  }
  # Username, gerrit runs on
  $gerrit_user = $::operatingsystem ? {
    default => 'gerrit',
  }
  # Home-Directory where gerrit whould be installed
  $gerrit_home = $::operatingsystem ? {
    default => '/opt/gerrit',
  }
  # type of Database storing configs of gerrit ['mysql' / 'pgsql']
  $gerrit_database_type = $::operatingsystem ? {
    default => 'pgsql',
  }
}
