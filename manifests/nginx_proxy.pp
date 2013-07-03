define gerrit::nginx_proxy (
  $config_path        = '/etc/nginx/conf.d/${name}.conf',
  $location           = '/gerrit',
  $proxy              = $gerrit::httpd_listen_url,
  $proxy_read_timeout = '',
  $proxy_set_header   = [],
  $auth_basic_realm   = 'Gerrit',
  $htpasswd_path      = 'htpasswd') {
  file { $config_path:
    ensure  => present,
    content => template('gerrit/nginx/vhost_location_proxy.erb'),
    mode    => '0644',
    owner   => root,
    group   => root,
  }
}