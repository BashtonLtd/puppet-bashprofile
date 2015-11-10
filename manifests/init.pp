# Class: bashprofile
# ===========================
#
# Adds bash profile to log all executed commands to syslog
#
# Examples
# --------
#
# @example
#    class { 'bashprofile': }
#
# Authors
# -------
#
# Sam Bashton <sam@bashton.com>
#
# Copyright
# ---------
#
# Copyright 2015 Bashton Ltd
#
class bashprofile {


  file { '/etc/profile.d/history2syslog.sh':
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/bashprofile/history2syslog.sh',
  }
}
