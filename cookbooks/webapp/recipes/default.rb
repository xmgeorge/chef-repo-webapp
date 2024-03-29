#
# Cookbook:: webapp
# Recipe:: default
#
# Copyright:: 2024, The Authors, All Rights Reserved.

# build_essential 'name' do
#     compile_time true
#     action :install
# end

include_recipe 'php::default'

apt_update 'name' do
  ignore_failure true
  action :update
end
# Install Nginx
nginx_install 'default' do
  action :install
end
# Configure Nginx
nginx_config 'nginx.conf' do
  action :create
end

php_fpm_pool 'default' do
  action :install
end
# Define a server block
nginx_site 'example.com' do
  cookbook 'webapp'
  template 'my_site.conf.erb'
  action :create
  notifies :reload, 'nginx_service[nginx]', :immediately
end
nginx_service 'nginx' do
  action :nothing # or :reload
end
