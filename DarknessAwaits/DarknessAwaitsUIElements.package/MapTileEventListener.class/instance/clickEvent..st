mouse handlers
clickEvent: anEvent
		Transcript show: 'click event registered at position: '.
	   Transcript show: anEvent currentTarget mapTile position.
		Transcript cr.
		gameManager clickActionData: anEvent currentTarget mapTile position