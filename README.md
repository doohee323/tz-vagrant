# tz-vagrant

install a Tz server with nginx, maven on ubuntu 16.04. 

- Preparation
```
1. install vagrant & virtualbox
	https://www.vagrantup.com/downloads.html
	https://www.virtualbox.org/wiki/Downloads
	
2. change hosts
	sudo vi /etc/hosts
	192.168.82.170 dev.tz.com	

3. git clone 
	git clone https://github.com/doohee323/tz-vagrant.git
	cd tz-vagrant
	bash build.sh

	# import db
	vagrant ssh	
	cd /vagrant/resources/mysql
	mysql -u tzuser -h 192.168.82.170 -p tz_dev < tz_dev.sql 
	#passwd123
```

- Test
```
	http://dev.tz.com/#!/login	
	
	doogee323@gmail.com  / 971097
```

- Build
```
	vagrant ssh
	build	# build war
	deploy	# build ui
```

- Restart services
```
	vagrant ssh
	
	1. tomcat
	sudo systemctl restart tomcat
	
	log
	tail -f logs/2017-02-16.log
	
	2. nginx
	sudo service nginx stop
	sudo service nginx start
	
	tail -f /var/log/nginx/error.log
```
test123