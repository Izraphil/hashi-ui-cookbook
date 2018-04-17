#
# Cookbook:: hashi_ui
# Attribute:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

default['hashi_ui']['group'] = 'consul'
default['hashi_ui']['user'] = 'consul'

default['hashi_ui']['install_path'] = '/usr/local/bin'
default['hashi_ui']['version'] = 'v0.25.0'
default['hashi_ui']['tar']['download_url'] = "https://github.com/jippi/hashi-ui/releases/download/#{node['hashi_ui']['version']}/hashi-ui-linux-amd64"
default['hashi_ui']['tar']['checksum'] = '203f2c4d84baba095c062b0f9d413f7497d234370bb07985c738f41038e81f03'

# General configuration
default['hashi_ui']['config']['log-level'] = 'info'
default['hashi_ui']['config']['listen-address'] = '0.0.0.0:3000'
default['hashi_ui']['config']['proxy-address'] = nil
default['hashi_ui']['config']['https-enable'] = false
default['hashi_ui']['config']['server-cert'] = ''
default['hashi_ui']['config']['server-key'] = ''

# Nomad configuration
default['hashi_ui']['config']['nomad-enable'] = false
default['hashi_ui']['config']['nomad-address'] = 'http://127.0.0.1:4646'
default['hashi_ui']['config']['nomad-read-only'] = false
default['hashi_ui']['config']['nomad-ca-cert'] = ''
default['hashi_ui']['config']['nomad-client-cert'] = ''
default['hashi_ui']['config']['nomad-client-key'] = ''
default['hashi_ui']['config']['nomad-hide-env-data'] = false
default['hashi_ui']['config']['nomad-allow-stale'] = true

# Consul configuration
default['hashi_ui']['config']['consul-enable'] = true
default['hashi_ui']['config']['consul-address'] = '127.0.0.1:8500'
default['hashi_ui']['config']['consul-read-only'] = false
default['hashi_ui']['config']['consul.acl-token'] = ''
