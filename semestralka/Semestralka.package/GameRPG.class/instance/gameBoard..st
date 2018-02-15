accessing
gameBoard: anObject
	gameBoard := anObject.
	
	gameBoard announcer
		when: ClickOnSquareAnnouncement do: [ :announcement |
			self listenedClick: announcement clickedSquare.
			].