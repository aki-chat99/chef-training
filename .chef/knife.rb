current_dir   =   File.dirname(__FILE__)
username      =   "fake_user"

# Were making an assumption that the Vagrant was set up with a private addres in the 33.33.33.0 network
chef_server_url   "http://33.33.33.1:8889"

node_name         username
client_key        "#{current_dir}/#{username}.pem"
validation_key    "#{current_dir}/chef-validator.pem"
