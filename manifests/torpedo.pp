class openstack_test::torpedo {
  package { 'torpedo':
    provider => 'gem',
  }
  file { '/etc/torpedo.conf':
    content => template('openstack_test/torpedo.conf.erb')
  }
}
