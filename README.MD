# fei-vagrant
My vagrant config files.


## memery/cpu info:
```ruby
config.vm.provider "virtualbox" do |v|
  v.memory = 1024
  v.cpus = 2
end
```

## import a new box file:
```bash
# download:
wget  https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.2/vagrant-centos-7.2.box
mv ~/Downlods/vagrant-centos-7.2.box ~/soft/vagrant-files/

#edit Vagrantfile
# config.vm.box = "/Users/feizheng/soft/vagrant-files/vagrant-centos-7.2.box"
vagrant box add --name "fei-vagrant-centos-7.2" "/Users/feizheng/soft/vagrant-files/vagrant-centos-7.2.box"
vagrant up
```


## export my box file:


## base:
+ install vagrant:
```bsh
brew install Caskroom/cask/vagrant
```
+ select os:
```bash
# http://www.vagrantbox.es/
vagrant box add {title} {url}
vagrant init {title}
vagrant up
```

## resource:
+ https://www.vagrantup.com/docs


## Fixed ip:
+ config.vm.network :private_network, ip: "192.168.199.200"
