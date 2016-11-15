# centos7.2
+ 常用的 vhosts.conf 配置


## Install lamp on vagrant:
+ use vagrant config:
```ruby
config.vm.box = "vagrant-centos7.2"
config.vm.synced_folder "/Users/feizheng/git-oschina/wordpress-qiping", "/var/www/wordpress-qiping"
config.vm.network :private_network, ip: "192.168.10.10"
```

+ host file:
```conf
192.168.10.10	www.demo.com
```
+ start httd service:
```bash
service httpd start
```
