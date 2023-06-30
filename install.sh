 cp ./system/* /etc/systemd/system/
 systemctl daemon-reload
 systemctl enable mergin-gunicorn mergin-celery mergin-celerybeat
 systemctl restart mergin-gunicorn mergin-celery mergin-celerybeat

 cp ./nginx.conf /etc/nginx/conf.d/mergin.apps.kielce.eu.conf
 systemctl restart nginx

#install redis

curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list
sudo apt update
sudo apt install redis

sudo apt install pip
