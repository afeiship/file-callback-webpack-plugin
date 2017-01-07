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


## base:
+ install vagrant:
```bash
brew install Caskroom/cask/vagrant

# vagrant up	启动本地环境
# vagrant halt	关闭本地环境
# vagrant suspend	暂停本地环境
# vagrant resume	恢复本地环境
# vagrant reload	修改了 Vagrantfile 后，使之生效（相当于先 halt，再 up）
# vagrant ssh	通过 ssh 登录本地环境所在虚拟机
# vagrant destroy	彻底移除本地环境
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
