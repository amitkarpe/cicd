#host=$1
setup:
	@echo $$host
setup-agent:
	ssh $$host sudo apt install -y sshpass
	ssh $$host sudo yum install -y sshpass
	ssh sudo $$host echo "deploy ALL=(ALL) NOPASSWD:ALL" >> /tmp/sudo
	ssh sudo cat /etc/sudo
user=deploy
end:
	@echo $$host
	echo $$user
#	ssh $$host sudo systemctl stop train-schedule
	ssh $$user@$$host sudo systemctl stop train-schedule
	ssh $$user@$$host sudo systemctl status train-schedule
#	ssh $$user@$$host sudo systemctl start  train-schedule
