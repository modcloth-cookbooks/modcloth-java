#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright ModCloth, Inc.
#
# All rights reserved - Do Not Redistribute
#

cookbook_file '/opt/local/.dlj_license_accepted' do
  source 'dlj_license_accepted'
end

package 'sun-jre6' do
  action :install
end

cookbook_file '/opt/local/bin/java' do
  mode '0755'
  source 'java'
end

