actions
leftClickOnField
	(covered)
		ifTrue: [ self uncover ]
		ifFalse: [ self uncoverNeighbours	].