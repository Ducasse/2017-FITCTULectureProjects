mouse handlers
mouseDownEvent: anEvent
	| coordinates |
	(anEvent primaryButtonPressed)
		ifTrue: [
			grid firstMove ifTrue: [
				grid firstMove: false.
				coordinates := (anEvent currentTarget field coordinates).
				grid firstMoveCoordinates: coordinates.
				grid setupGrid.
				self announcer announce: MSGameStartAnnoucement new.	
				(grid grid at: (coordinates x) at: (coordinates y)) leftClick
			] ifFalse: [
				anEvent currentTarget field leftClick.
			]
		].
	
	(anEvent secondaryButtonPressed)
		ifTrue: [
			anEvent currentTarget field toggleMark.
		].
		
	anEvent consumed: true.