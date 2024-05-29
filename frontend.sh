echo -e "\e[31m***Installing Nginx\e[0m"
dnf install nginx -y    >/tmp/roboshop.log
echo -e "\e[32m***Removing old content\e[0m"
rm -rf /usr/share/nginx/html/*  >/tmp/roboshop.log  >/tmp/roboshop.log
echo -e "\e[33m***Downloading frontend zip file\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip  >/tmp/roboshop.log
echo -e "\e[34m***Extracting the frontend unzip\e[0m"
cd /usr/share/nginx/html
unzip /tmp/frontend.zip   >/tmp/roboshop.log
#echo -e "\e[36m***Hello RED Color\e[0m"
#vim /etc/nginx/default.d/roboshop.conf
#we need to copy config file
echo -e "\e[35m***Enable and Restart the Nginx service\e[0m"
systemctl enable nginx    >/tmp/roboshop.log
systemctl restart nginx   >/tmp/roboshop.log
