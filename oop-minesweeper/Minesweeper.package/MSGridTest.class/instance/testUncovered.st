test actions
testUncovered
	| grid gameProperties announced |
	gameProperties := MSMediumGameProperties new.
	grid := MSGrid withGameProperties: gameProperties.
	grid announcer when: MSGameWinAnnoucement do: [ announced := true ].
	
	grid setupGrid.
		
	grid grid do: [ :field |
		(field isNumberField)
			ifTrue: [ field leftClick ]
	].

	self assert: announced equals: true.
	