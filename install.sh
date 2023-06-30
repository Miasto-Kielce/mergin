 cp ./system/* /etc/systemd/system/
 systemctl daemon-reload
 systemctl enable mergin-gunicorn mergin-celery mergin-celerybeat
 systemctl restart mergin-gunicorn mergin-celery mergin-celerybeat

 cp ./nginx.conf /etc/nginx/conf.d/mergin.apps.kielce.eu.conf
 systemctl restart nginx
