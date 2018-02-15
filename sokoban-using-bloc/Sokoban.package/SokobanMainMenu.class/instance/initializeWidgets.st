initialization
initializeWidgets

	buttonStart := self newButton.
	buttonExit := self newButton.
	
	buttonStart label: 'Start'.
	buttonExit label: 'Exit'.
	
	self focusOrder
		add: buttonStart;
		add: buttonExit.