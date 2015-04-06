Falcon set up
Experiment with Apache Falcon.
apache falcon, big data, hadoop, setup

#Set up hadoop cluster using vagrant and virtual box.
http://hortonworks.com/blog/building-hadoop-vm-quickly-ambari-vagrant/

	mkdir hdp_vm
	vagrant box add hdp_vm https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box
	vagrant init hdp_vm
	vagrant up
	vagrant ssh

	sudo su -
	hostname #Add this hostname in config
	vi /etc/hosts
	yum install ntp wget
	chkconfig ntpd on
	service ntpd start

	cp ~/.ssh/id_rsa /vagrant/
	cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

	wget -nv http://public-repo-1.hortonworks.com/ambari/centos6/1.x/updates/1.7.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
	yum install ambari-server
	ambari-server setup
	ambari-server start
