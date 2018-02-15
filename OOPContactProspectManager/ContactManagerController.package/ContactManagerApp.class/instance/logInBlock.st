blocks
logInBlock
	^ [ :i |	
		self logInWithLogin: (i login) password: (i password)]