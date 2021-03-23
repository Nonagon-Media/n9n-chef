#
# Cookbook:: first_cookbook
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file "#{ENV['HOME']}/test.txt" do
  content 'This file was created by Chef Infra!\n'
end

message = node['first_cookbook']['message']
Chef::Log.info("** Saying what I was told to say: #{message}")
