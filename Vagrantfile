# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # server 1
  config.vm.define "s1" do |s1|
    $script = <<-SCRIPT
    useradd -m -d /home/s1 s1
    echo "s1:s1" | chpasswd
    SCRIPT

    s1.vm.box = "ubuntu/precise64"
    s1.vm.hostname = "s1"
    s1.vm.network "private_network", ip: "192.168.33.10"
    s1.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 512]
      vb.customize ["modifyvm", :id, "--name", "s1"]
    end
    s1.vm.provision "shell", inline: $script
  end


  # server 2
  config.vm.define "s2" do |s2|

    $script = <<-SCRIPT
    useradd -m -d /home/s2 s2
    echo "s2:s2" | chpasswd
    SCRIPT

    s2.vm.box = "ubuntu/precise64"
    s2.vm.hostname = "s2"
    s2.vm.network "private_network", ip: "192.168.33.11"
    s2.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 512]
      vb.customize ["modifyvm", :id, "--name", "s2"]
    end
    s2.vm.provision "shell", inline: $script
  end

end
