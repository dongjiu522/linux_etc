#设置静态ip地址
#1.设置ip地址 vim /etc/network/interface 

auto 	eth0
iface 	eth0 inet static
address 192.168.1.100
netmask 255.255.255.0 
gateway 192.168.1.1 

#2.设置dns vim /etc/resolvconf/resolv.conf.d/base
# 
#nameserver 8.8.8.8 
#nameserver 8.8.4.4
# 
#3.刷新配置文件 
#resolvconf -u 
#4.重启网络服务 
#/etc/init.d/networking restart