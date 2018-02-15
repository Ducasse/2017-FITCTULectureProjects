private
addNewUser: aUser
	self getUsersCount asInteger = 0 ifTrue:
	 [ ^ self addAdmin: aUser].	
	^ self addCasualUser: aUser.