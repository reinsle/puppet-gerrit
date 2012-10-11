# Class: gerrit::params
class gerrit::params {

	$gerrit_version = $::operatingsystem ? {
		default => '2.4.2',
	}
	
}
