CHEF ZERO
---------

We will be using chef-zero as a lightweight local chef server. This is an in-memory fast chef server implementation designed for testing and development. We will need to make sure you have chef-zero available on your system.

1. chef 11.8.x
---------------

You are lucky! chef-zero is included with chef 11.8.0 and newer. You are all set!

2. chef 11.6.x or older
-----------------------

You will need to install chef-zero as it is not bundled with your version. 

- if you use omnibus install, just update to 11.8.0:

`curl -L https://www.opscode.com/chef/install.sh | sudo bash`

- if you use rmv/gems just install the chef-zero gem:

`gem install chef-zero`
