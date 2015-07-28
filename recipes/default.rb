#
# Cookbook Name:: resharper
# Recipe:: default
#
# Copyright 2015, Ivan Li
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'windows'

windows_package 'JetBrains ReSharper Ultimate in Visual Studio 2013' do
  package_name 'JetBrains ReSharper Ultimate in Visual Studio 2013'
  source "http://download.jetbrains.com/resharper/JetBrains.ReSharper#{node['resharper']['variant']}.#{node['resharper']['version']}.exe"
  installer_type :custom
  options "/SpecificProductNames=ReSharper /Silent=True /VsVersion=12"
  action :install
end