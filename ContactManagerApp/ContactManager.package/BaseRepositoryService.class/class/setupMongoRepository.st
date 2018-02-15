as yet unclassified
setupMongoRepository
"called into WAContactApp initialization"
	| repository |
	repository := VOMongoRepository host: '127.0.0.1:27017' database: 'contacts'.
	repository enableSingleton