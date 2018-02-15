test private
testAssignNeighbours
	| grid gameProperties |
	gameProperties := MSMediumGameProperties new.
	gameProperties size: (3@3).
	grid := MSGrid withGameProperties: gameProperties.
	
	1 to: grid grid rowCount do: [ :x |
		1 to: grid grid columnCount do: [ :y |
			grid grid at: x at: y put: (MSNumberField new coordinates: x@y).
		]
	].
	
	grid assignNeighbours.
		
	self verifyNeighbours: (grid grid). 