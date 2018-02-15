as yet unclassified
logInWithLogin: aLogin password: aPassword
	user := (User username: aLogin password: aPassword).
	user ifNil: [ logInForm loginWarning ] 
	ifNotNil: [ 
		self openWindowWithUser: user.
		logInForm window close.
		 ]  