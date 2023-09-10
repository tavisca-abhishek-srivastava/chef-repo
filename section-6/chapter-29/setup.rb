# ~/cookbooks/workstation/recipes/setup.rb

package 'nano'
# or package 'vim-enhanced'

package 'ntp'

package 'git' do
	action :install
end

file '/etc/motd' do
    content "This server is the property of Abhishek Srivastava...
    IpAddress: #{node['ipaddress']}
    Hostname: #{node['hostname']}
    CPU: #{node['cpu']['0']['mz']}
    Memory: #{node['memory']['total']}
    "
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end
