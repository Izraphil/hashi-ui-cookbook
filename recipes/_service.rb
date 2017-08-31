#
# Cookbook:: hashi_ui
# Recipe:: _service
#
# Copyright:: 2017, Aoi Kadoya, All Rights Reserved.
#

directory '/usr/lib/systemd/system' do
  owner 'root'
  group 'root'
end

template '/usr/lib/systemd/system/hashi-ui.service' do
  source 'hashi-ui.service.erb'
  mode 0644
  variables(
    binary: "#{node['hashi_ui']['install_path']}/hashi-ui-#{node['hashi_ui']['version']}",
    user: node['hashi_ui']['user'],
    group: node['hashi_ui']['group'],
    options: node['hashi_ui']['config'],
    start_opt: ''
  )
  notifies :run, 'bash[systemctl daemon-reload]', :immediately
  notifies :restart, 'service[hashi-ui]', :delayed
end

bash 'systemctl daemon-reload' do
  code 'systemctl daemon-reload'
  action :nothing
end

service 'hashi-ui' do
  supports status: true, restart: true
  action [:enable]
end
