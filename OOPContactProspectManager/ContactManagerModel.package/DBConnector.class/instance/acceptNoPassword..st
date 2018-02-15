visiting
acceptNoPassword: aDatabaseSetting
	repository := VOMongoRepository
		host: aDatabaseSetting getHost
		port: aDatabaseSetting getPort
		database: aDatabaseSetting getDatabase.
		
	repository enableSingleton.