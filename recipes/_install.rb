#
# Cookbook:: hashi_ui
# Recipe:: _install
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# create group
group node['hashi_ui']['group'] do
  system true
  action :create
end

# create user
user node['hashi_ui']['user'] do
  comment 'Hashi-ui User'
  gid node['hashi_ui']['group']
  system true
  action :create
end

remote_file "#{node['hashi_ui']['install_path']}/hashi-ui-#{node['hashi_ui']['version']}" do
  source node['hashi_ui']['tar']['download_url']
  checksum node['hashi_ui']['tar']['checksum']
  mode 0755
  action :create
end
