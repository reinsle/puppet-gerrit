# = Class: gerrit
#
# This is the main gerrit class
#
#
# == Parameters
#
# Standard class parameters
# Define the general class behaviour and customizations
#
# [*gerrit_version*]
#   Version of gerrit
#
# == Author
#   Robert Einsle <robert@einsle.de>
#
class gerrit (
  $gerrit_version       = params_lookup('gerrit_version'),
  $gerrit_user          = params_lookup('gerrit_user'),
  $gerrit_home          = params_lookup('gerrit_home'),
  $gerrit_database_type = params_lookup('gerrit_database_type')
  ) inherits gerrit::params {

}

