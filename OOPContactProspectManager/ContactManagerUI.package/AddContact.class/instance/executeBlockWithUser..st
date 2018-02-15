accessing
executeBlockWithUser: aUser
	aUser ifNotNil: [ executeBlock value: aUser ]