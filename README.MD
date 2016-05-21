# fei-vagrant
My vagrant config files.


## memery/cpu info:
```ruby
config.vm.provider "virtualbox" do |v|
  v.memory = 1024
  v.cpus = 2
end
```


##Base:
+ vagrant up (install ubuntu x64)
+ vagrant ssh
+ exit

##resource:
+ https://www.vagrantup.com/docs


## Fixed ip:
+ config.vm.network :private_network, ip: "192.168.199.200"