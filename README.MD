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
```bash
vagrant package --output fei-vagrant-centos-7.2.box
```

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

## initial:
```bash
vagrant box add vagrant-centos7.2 /Users/feizheng/soft/vagrant-files/vagrant-centos-7.2.box;
vagrant init vagrant-centos7.2;
```


##network ifconfig:
```conf
[vagrant@localhost ~]$ yum search ifconfig
Failed to set locale, defaulting to C
Loaded plugins: fastestmirror
Repodata is over 2 weeks old. Install yum-cron? Or run: yum makecache fast
Determining fastest mirrors
 * base: mirrors.btte.net
 * epel: mirror.bytemark.co.uk
 * extras: mirrors.btte.net
 * updates: centos.ustc.edu.cn
============================== Matched: ifconfig ===============================
moreutils.x86_64 : Additional unix utilities
net-tools.x86_64 : Basic networking tools
python-psutil.x86_64 : A process and system utilities module for Python
```
## resource:
+ https://www.vagrantup.com/docs
