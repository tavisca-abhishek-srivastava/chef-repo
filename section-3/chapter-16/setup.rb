# ~ setup.rb

package 'tree' do
    action :install
end

package 'ntp'

file '/etc/motd' do
    content 'This server is the property of ...'
    owner 'root'
    group 'root'
    # mode '0755'
    action :create
end
# include_recipe 'cookbook::recipe'