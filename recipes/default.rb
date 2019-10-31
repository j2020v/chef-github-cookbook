#
# Cookbook:: github
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package "python" do
  action :install
end

package 'python-pip'  # package default will install

#### requests==2.3.0  #######
execute 'install requests==2.3.0' do
  command 'pip install requests==2.3.0'
end
