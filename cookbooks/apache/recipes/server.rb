#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2023, The Authors, All Rights Reserved.
#
# ~/cookbooks/apache/recipes/server.rb

package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content '<h1>Hello, world!</h1>'
end

service 'httpd' do
	action [:enable,:start ]
end
