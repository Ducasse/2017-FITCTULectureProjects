visiting
acceptFullConfig: aDatabaseSetting
	repository := VOMongoRepository
		host: aDatabaseSetting getHost
		port: aDatabaseSetting getPort
		database: aDatabaseSetting getDatabase
		username: aDatabaseSetting getUsername
		password: aDatabaseSetting getPassword.
		
	repository enableSingleton.