test actions
testGameOver
	| grid gameProperties announced firstMineField |
	gameProperties := MSMediumGameProperties new.
	grid := MSGrid withGameProperties: gameProperties.
	announced := false.
	grid announcer when: MSGameOverAnnoucement do: [ announced := true ].
	grid setupGrid.
	
	firstMineField := grid grid detect: [ :field | field isMine ].
	firstMineField leftClick.
	
	self assert: announced equals: true.
	
	grid grid do: [ :field |
		self assert: (field covered not).	
	].
	