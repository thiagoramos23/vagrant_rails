#
# Author:: Arthur Santos (<arthur@bluevox.com.br>)
#
# Cookbook Name:: rota3
# Attributes:: default
#
default_password = '849003'

node.default['wordpress']['web_app'] = [
  {
    :server_port => 80,
    :name => node['fqdn'],
    :server_name => node['fqdn'],
    :server_aliases => [node['fqdn']],
    :docroot => "/var/www/wordpress",
    :allow_override => "FileInfo Options Indexes",
    :directory_index => []
  }
]

node.normal['mysql']['server_debian_password'] = default_password
node.normal['mysql']['server_root_password'] = default_password
node.normal['mysql']['server_repl_password'] = default_password

node.normal['wordpress']['parent_dir'] = "/var/www"
node.normal['wordpress']['dir'] = "#{node['wordpress']['parent_dir']}/wordpress"
node.normal['wordpress']['url'] = 'http://br.wordpress.org/latest-pt_BR.tar.gz'
node.normal['wordpress']['languages']['lang'] = 'pt_BR'
node.normal['wordpress']['server_aliases'] = [node['fqdn'], 'wp.dev']