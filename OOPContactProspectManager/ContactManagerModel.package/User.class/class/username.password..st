instance creation
username: anUsername password: aPassword
	^User selectOne: [ :each | (each username = anUsername) & (each password = aPassword)].