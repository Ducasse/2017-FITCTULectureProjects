action
addAdmin: aUser
	users add: (TCAdmin addUser: (aUser at: #name)).