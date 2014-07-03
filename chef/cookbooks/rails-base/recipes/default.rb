#
# Cookbook Name:: rails-base
# Recipe:: default
#
# Copyright (C) 2014 Arthur Santos
# 
# All rights reserved - Do Not Redistribute
#
include_recipe "rvm::system"
include_recipe "rvm::vagrant"
include_recipe "postgresql-base"
include_recipe "nodejs-base"

%w(libmagickwand4 libmagickwand-dev).each do |pkg|
  package pkg do
    action :install
  end
end