# ~/cookbooks/workstation/recipes/setup.rb

package 'nano'
# or package 'vim-enhanced'

package 'ntp'

package 'git' do
	action :install
end

template '/etc/motd' do
    source 'motd.erb'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

