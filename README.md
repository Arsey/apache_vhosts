Virtual Hosts Cookbook for Chef and Vagrant
================
This cookbook makes configuring Apache virtual hosts.
Especially useful for Vagrant.

## Usage (part of Vagrant file)
    
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = ["cookbooks"]
      chef.add_recipe 'apache2'
      chef.add_recipe 'apache_vhosts'
      :apache_vhosts=>[
		{
			:app=>"app1",
			:path=>"/var/www/app1",
			:server_name=>"app1.local",
			:server_email=>"serveremail@app1.com"
		},
		{
			:app=>"app2",
			:path=>"/var/www/app2",
			:server_name=>"app2.local",
			:server_email=>"serveremail@app2.com"
		}
		]
    end

Also you can use this cookbook with librarian-chef on install. Just add

	site 'http://community.opscode.com/api/v1'
	...
	cookbook "apache_vhosts"
	...
	
to the Cheffile
