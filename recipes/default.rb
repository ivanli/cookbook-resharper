#
# Cookbook Name:: resharper
# Recipe:: default
#
# Copyright 2015, Ivan Li
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'chocolatey'

if node['resharper']['version'] == :latest
  chocolatey 'resharper'
else
  chocolatey 'resharper' do
    version node['resharper']['version']
  end
end