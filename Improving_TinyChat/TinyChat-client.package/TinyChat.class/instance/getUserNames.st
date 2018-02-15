private
getUserNames
accesWebPath := webPath cmdGetUserNames.
	^ ZnClient new
		url: self accesWebPath;
		get