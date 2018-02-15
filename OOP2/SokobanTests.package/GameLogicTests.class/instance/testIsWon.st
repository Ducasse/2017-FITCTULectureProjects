tests
testIsWon
	| level box |
	level := Level new.
	level board: (Board width: 2 height: 1).
	box := Box new.
	level boxes add: box.
	level board put: Floor new X: 1 Y: 1.
	level board put: Target new X: 2 Y: 1.
	level bestScore: UndifinedScore new.
	box x: 1.
	box y: 1.
	self assert: (level atX: 1 Y: 1) class equals: Box.
	self assert: (level atX: 2 Y: 1) class equals: Target.
	self assert: level isWon equals: false.
	level moveBox: box dir: Direction right.
	self assert: level isWon equals: true