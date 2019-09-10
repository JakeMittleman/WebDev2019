server {
	listen 80;
	listen [::]:80;

	root /home/jake/www/hw01/hw01.paperdogg.com;

	index index.html;

	server_name hw01.paperdogg.com;

	location / {
		try_files $uri $uri/ =404;
	}

}
