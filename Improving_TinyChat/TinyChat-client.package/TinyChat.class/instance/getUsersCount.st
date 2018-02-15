private
getUsersCount
accesWebPath := webPath cmdUsersCount.
	^ ZnClient new
		url: self accesWebPath ;
		get