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
	$gerrit_version = params_lookup('gerrit_version')
) inherits
gerrit::params {
	
}

