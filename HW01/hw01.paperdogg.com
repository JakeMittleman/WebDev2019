server {
	listen 80;
	listen [::]:80;

	#root /home/jake/www/paperdogg.com;
	root /home/jake/www/main;

	index hw01.html;

	server_name hw01.paperdogg.com;

	location / {
		try_files $uri $uri/ =404;
	}

}
