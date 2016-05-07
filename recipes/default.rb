#
# Cookbook Name:: node-test
# Recipe:: default
#
# Copyright (C) 2016 Fabrizio Catitti
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nodejs"
include_recipe "nginx::default"

begin
  r = resources(:template => "/etc/nginx/sites-enabled/000-default")
  r.cookbook('node-test')
  r.source('default-sire.erb')
rescue Chef::Exceptions::ResourceNotFound
  Chef::Log.warn "could not find template to override!"
end

directory '/var/www/nginx-default' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end
cookbook_file "/var/www/nginx-default/index.html" do
  source "index.html"
  mode "0644"
end