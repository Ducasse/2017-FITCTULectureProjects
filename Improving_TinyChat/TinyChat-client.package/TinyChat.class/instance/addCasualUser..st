private
addCasualUser: aUser
	^  ZnClient new
		url: self webPath cmdNewUserCasual;
		formAt: 'name' put: aUser;
		post
	  