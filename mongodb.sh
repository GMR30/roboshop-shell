#copy the mongodb repo file
echo -e "\e[31m***Copying  Mongodb repo file\e[0m"
cp mongodb.repo /etc/yum.repos.d/mongo.repo
echo -e "\e[32m***Installing Mongodb\e[0m"
dnf install mongodb-org -y
#echo -e "\e[33m***Update listen address from 127.0.0.1 to 0.0.0.0 in /etc/mongod.conf\e[0m"
echo -e "\e[34m***Enable and Restart Mongodb service\e[0m"
systemctl enable mongod
systemctl restart mongod