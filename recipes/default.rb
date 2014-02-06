# create VirtualHosts
node['apache_vhosts'].each{|vhost| 
	web_app vhost['app'] do
		template 'vhost.erb'
		docroot vhost['path']
		server_name vhost['server_name']
		server_email vhost['server_email']
		server_alias vhost['server_alias']
	end
}