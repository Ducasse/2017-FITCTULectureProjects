test actions
testFirstMoveCoordinates
	| grid gameProperties |
	gameProperties := MSMediumGameProperties new.
	grid := MSGrid withGameProperties: gameProperties.
	self assert: grid firstMove equals: true.
	grid firstMoveCoordinates: 5@9.
	grid placeMines.
	self assert: (grid grid at: 5 at: 9) number equals: 0.
	