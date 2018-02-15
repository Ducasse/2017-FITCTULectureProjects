private
addAdmin: aUser
accesWebPath := webPath cmdNewUserAdmin.
	^  ZnClient new
		url: self accesWebPath;
		formAt: 'name' put: aUser;
		post
	 