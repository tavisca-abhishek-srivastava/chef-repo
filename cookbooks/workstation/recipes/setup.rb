# ~/cookbooks/workstation/recipes/setup.rb

package 'nano'
# or package 'vim-enhanced'

package 'ntp'

package 'git' do
	action :install
end

# ~/cookbooks/workstation/recipes/setup.rb

package 'nano'
# or package 'vim-enhanced'

template '/etc/motd' do
    source 'motd.erb'
    variables(
        :name => 'JPMC'
  )
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end



