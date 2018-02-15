tests
testUncover
	| field previousValue announcedUncovered announcedGameOver |
	announcedUncovered := false.
	announcedGameOver := false.
	field := MSMineField new.
	field announcer when: MSFieldUncoveredAnnoucement do: [ announcedUncovered := true ].
	field announcer when: MSGameOverAnnoucement  do: [ announcedGameOver := true ].
	previousValue := field covered.
	field uncover.
	
	self assert: (previousValue ~= field covered).
	self assert: announcedUncovered equals: true.
	self assert: announcedGameOver equals: true.