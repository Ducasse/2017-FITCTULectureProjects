api
port: aPort
	^ self withConfig: (ServerConfig basicNew host: #[0 0 0 0]; port: aPort; yourself).