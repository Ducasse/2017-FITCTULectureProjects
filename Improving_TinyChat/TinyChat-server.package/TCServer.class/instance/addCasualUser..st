action
addCasualUser: aUser
	users add: (TCCasualUser addUser: (aUser at: #name)).