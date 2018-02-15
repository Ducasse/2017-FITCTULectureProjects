api
host: aHost port: aPort
	^ self withConfig: (ServerConfig basicNew host: aHost; port: aPort; yourself).