factory methods
addRipple
	button
		addEventHandlerOn: BlClickEvent
		do: [ :e | button rippleClick: e position - button positionInSpace ]