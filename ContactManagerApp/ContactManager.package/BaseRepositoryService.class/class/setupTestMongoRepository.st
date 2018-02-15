as yet unclassified
setupTestMongoRepository
"called into WAContactApp initialization"
	| repository |
	repository := VOMongoRepository host: '127.0.0.1:27017' database: 'contactTests'.
	repository enableSingleton