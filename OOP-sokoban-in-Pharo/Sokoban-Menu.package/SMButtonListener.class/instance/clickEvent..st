event handling
clickEvent: anEvent
	| currIndex |
	currIndex := anEvent currentTarget button id asNumber.
 
	( currIndex >= 0 ) ifTrue: [ 
		"restart"
		( currIndex = 0) ifTrue: [ 
			buttons changeLevelClick: buttons actLevelNumber.
			^self
		].
	
		"undo"
		( currIndex = 4) ifTrue: [ buttons gameInstance undo. ^self].
	
		"select level"
		( currIndex = 2 or: currIndex = 9) ifTrue: [ 
			buttons changeLevelClick: buttons selectedLevel.
			buttons actLevelNumber: buttons selectedLevel.
			^self
		].

		"left arrow - change selected level"
		( currIndex = 1) ifTrue: [ buttons changeLevel: -1. ^self ].
	
		"right arrow - change selected level"
		( currIndex = 3) ifTrue: [ buttons changeLevel: 1. ^self ].
		
		"moveUp"
		( currIndex = 5) ifTrue: [ buttons gameInstance moveUp. ^self ].
		
		"moveDown"
		( currIndex = 7) ifTrue: [ buttons gameInstance moveDown. ^true ].
	
		"moveRight"
		( currIndex = 8) ifTrue: [ buttons gameInstance moveRight. ^self ].
	
		"moveLeft"
		( currIndex = 6) ifTrue: [ buttons gameInstance moveLeft. ^self ].
	].