server {
	listen 80;
	listen [::]:80;

	root /home/jake/www/paperdogg.com;

	index index.html;

	server_name paperdogg.com www.paperdogg.com;

	location / {
		try_files $uri $uri/ =404;
	}

}


