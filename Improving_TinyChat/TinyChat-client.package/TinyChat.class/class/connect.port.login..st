initialize
connect: aHost port: aPort login: aLogin

	^ self new
		host: aHost port: aPort login: aLogin;
		start