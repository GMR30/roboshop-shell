echo -e "\e[31m***Installing Nginx\e[0m"
dnf install nginx -y
echo -e "\e[31m***Removing old content\e[0m"
rm -rf /usr/share/nginx/html/*
echo -e "\e[31m***Downloading frontend zip file\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
echo -e "\e[31m***Extracting the frontend unzip\e[0m"
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
#echo -e "\e[31m***Hello RED Color\e[0m"
#vim /etc/nginx/default.d/roboshop.conf
#we need to copy config file
echo -e "\e[31m***Enable and Restart the Nginx service\e[0m"
systemctl enable nginx
systemctl restart nginx