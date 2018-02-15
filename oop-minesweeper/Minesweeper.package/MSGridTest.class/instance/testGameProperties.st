test actions
testGameProperties
	| grid gameProperties1 gameProperties2 |
	gameProperties1 := MSMediumGameProperties new.
	gameProperties2 := MSHardGameProperties new.
	grid := MSGrid withGameProperties: gameProperties1.
	self assert: grid gameProperties equals: gameProperties1.
	self assert: ((grid grid rowCount) @ (grid grid columnCount)) equals: gameProperties1 size.
	grid gameProperties: gameProperties2.
	self assert: grid gameProperties equals: gameProperties2.
	self assert: ((grid grid rowCount) @ (grid grid columnCount)) equals: gameProperties2 size.
	