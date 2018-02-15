api
host: aHost
	^ self withConfig: (ServerConfig basicNew host: aHost; port: 3000; yourself).