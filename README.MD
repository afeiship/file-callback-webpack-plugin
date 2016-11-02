# fei-vagrant
My vagrant config files.


## memery/cpu info:
```ruby
config.vm.provider "virtualbox" do |v|
  v.memory = 1024
  v.cpus = 2
end
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

## resource:
+ https://www.vagrantup.com/docs


## Fixed ip:
+ config.vm.network :private_network, ip: "192.168.199.200"
