#
# Cookbook:: databagtest
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
secret = Chef::EncryptedDataBagItem.load_secret("/etc/chef/encrypted_data_bag_key")

oracle_keys = Chef::EncryptedDataBagItem.load("mysecrets", "oracletraining", secret)

template "/tmp/databag" do
	variables(
		:password => oracle_keys['password'],
		:user => oracle_keys['user']
	)
	mode "0644"
	source "databag.erb"
end
