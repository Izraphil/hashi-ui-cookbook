#
# Cookbook:: hashi_ui
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'hashi_ui::_install'
include_recipe 'hashi_ui::_service'

service 'hashi-ui' do
  action [:start]
end
