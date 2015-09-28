#
# Cookbook Name:: ssh-simple
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

template '/etc/ssh/sshd_config' do
  source 'sshd_config.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[sshd]'
end

service 'sshd' do
  action :nothing
end
