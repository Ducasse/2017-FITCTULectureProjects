accessing
lastAction
	current = 0
		ifTrue: [ ^ NoMove new ]
		ifFalse: [ ^ moves at: current ]