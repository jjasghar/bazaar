#
# Cookbook Name:: bazaar
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

case node['platform_family']
when 'rhel', 'fedora'
  include_recipe 'yum'
when 'debian', 'ubuntu'
  include_recipe 'apt'
end

package 'bzr' do
  action :install
end
