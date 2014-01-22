default = {
  :user => ENV['OPSCODE_USER'] || ENV['USER'],
  :project => File.basename(Dir.getwd)
}

VM_NODENAME = "vagrant-#{default[:user]}-#{default[:project]}"

Vagrant.configure("2") do |config|
  config.vm.hostname = VM_NODENAME

  config.vm.box = "opscode-debian-7.2.0"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_debian-7.2.0_chef-provisionerless.box"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  config.omnibus.chef_version = :latest

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :info
    chef.run_list = [
      "recipe[#{default[:project]}]"
    ]
  end
end
