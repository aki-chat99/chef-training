Configuring your Workstation
============================

Assumptions
-----------

-   We're assuming everyone will be working on a modern Mac OS X laptop, running
    Mavericks or Mountain Lion (10.8.x or 0.9.x). Most of these instructions should work with any nix 
    but please let us know if you have a different OS and need special instructions for it.

Install VirtualBox
------------------

   Download and install VirtualBox from: https://www.virtualbox.org/wiki/Downloads

   The latest version available at this time is 4.3.6 and can be downloaded directly with:

`wget http://download.virtualbox.org/virtualbox/4.3.6/VirtualBox-4.3.6-91406-OSX.dmg`

   After installing download also from the same page the *VirtualBox Extension Pack*. This will automatically open VirtualBox and install once you open the file.
   Direct link for the ext pack is: `http://download.virtualbox.org/virtualbox/4.3.6/Oracle_VM_VirtualBox_Extension_Pack-4.3.6-91406.vbox-extpack`

Install Vagrant
---------------

   Download and install Vagrant form http://www.vagrantup.com/downloads.html

   The latest version available at this time is 1.4.3 and can be downloaded directly with:

`wget https://dl.bintray.com/mitchellh/vagrant/Vagrant-1.4.3.dmg`

### Set up Vagrant for the class

1. Download and install the vagrant box we will be using. This is a standard debian box with a minimal install build by opscode:

   `vagrant box add opscode-debian-7.2.0 http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_debian-7.2.0_chef-provisionerless.box`

   You can verify the box is correctly installed with:
    `vagrant box list`

2. Install vagrant omnibus plugin:

   `vagrant plugin install vagrant-omnibus`

* *vagrant-omnibus:* Ensures the desired version of Chef is installed
  via the platform-specific Omnibus packages 

  You can verify the vagrant plugin was correctly installed with:

  `vagrant plugin list`

## Install Chef for your Workstation

> NOTE: You don't need to reinstall Chef if you already have chef tools
> installed on your workstation via omnibus or gems. But you should be using the 
> latest or near latest versions of these tools.
> (See http://www.getchef.com/chef/install/ for how to install on other platforms)

The Chef Omnibus installer installs the entire chef tool set and
required packages including its own ruby in /opt/chef. Its the best
way to insure you have a complete set of tools and its designed to not
interfere with other copies of the tools you may already have
installed on your machine.

1. Download and install the omnibus installer  
    The following command will download and install all the chef tools in
    /opt/chef. You will need to give it your password for sudo:

    ```
    curl -L https://www.opscode.com/chef/install.sh | sudo bash
    ```
2. You have to add the following symlink via a shell command line:

    ```
    sudo ln -s /opt/chef/bin/chef-zero /usr/bin
    ```

Note
----

Please contact us if you have any issues in following these steps. We need everyone to have VirtualBox, Vagrant and the Debian Box installed before we start the class as these steps could take a while to perform as some downloads a quite big.
