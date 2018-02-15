initialization
initializeWidgets
	text := self newLabel.
	yesButton := self newButton.
	noButton := self newButton. 
	
	yesButton label: 'Yes'.
	noButton label: 'No'.
	
	game ifNotNil: [ 
		text label: 'Do you really want delete ' , game asString, ' game?'.
	].

	game ifNil: [ 
		text label: 'You have to select game to delete in list.'.
		yesButton disable.
		noButton disable. ].