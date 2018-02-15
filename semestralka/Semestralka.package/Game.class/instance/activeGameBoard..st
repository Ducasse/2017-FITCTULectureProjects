setting
activeGameBoard: anObject
	activeGameBoard := anObject.
	
	activeGameBoard announcer
		when: ClickOnSquareAnnouncement do: [ :announcement |
			"Transcript show: 'move click' ; cr."
			self listenedClickOnSquare: announcement clickedSquare. ].

	activeGameBoard announcer
		when: ClickOnUnitAnnouncement do: [ :announcement |
			"Transcript show: 'attack click' ; cr."
			self listenedClickOnUnit: announcement clickedSquare. ].