test actions
testWithGameProperties
	| grid gameProperties1 gameProperties2 |
	gameProperties1 := MSMediumGameProperties new.
	gameProperties2 := MSHardGameProperties new.
	grid := MSGrid withGameProperties: gameProperties1.
	self assert: grid gameProperties equals: gameProperties1.
	grid := MSGrid withGameProperties: gameProperties2.
	self assert: grid gameProperties equals: gameProperties2.
	