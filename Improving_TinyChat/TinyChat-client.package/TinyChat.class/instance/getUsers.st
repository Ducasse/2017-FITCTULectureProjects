private
getUsers
accesWebPath := webPath cmdGetUsers.
	^ ZnClient new
		url: self accesWebPath;
		get