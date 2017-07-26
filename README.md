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


### Developing UI on your local PC without vagrant
```
- install brew (https://brew.sh/)
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
- install npm (package manager)
    brew install npm
- install grunt (developing tool on local environment)
    https://medium.com/sunhyoups-story/grunt%EC%99%80-bower%EB%A5%BC-%EC%9D%B4%EC%9A%A9%ED%95%9C-%EC%9B%B9-%ED%94%84%EB%A1%A0%ED%8A%B8%EC%97%94%EB%93%9C-%EC%A0%9C%EC%9E%91%ED%95%98%EA%B8%B0-bfa32e6614c1
    npm install grunt-cli -g 
    npm install grunt --g
    npm install bower --g

cd ~ /tz-vagrant/tz-angular1.4
$> npm install
$> bwoer install

- run tomcat on your local pc
- run ui app
$> grunt serve
```

