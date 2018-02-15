initialization
defaultDataSource
	^dataSource ifNil: [dataSource := GameLogDataSource new].
	