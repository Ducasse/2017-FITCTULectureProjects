private
removeUser: aUser
accesWebPath := webPath cmdRemoveUser.
	^ ZnClient new
		url: self accesWebPath ;
		formAt: 'name' put: aUser;
		post