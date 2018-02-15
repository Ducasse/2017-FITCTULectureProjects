tests
testMovingOutside
	| game |
	game := Level new.
	game board: (Board width: 1 height: 1).
	game player x: 1.
	game player y: 1.
	self assert: (game movePlayer: Direction up) equals: false.
	self assert: (game movePlayer: Direction left) equals: false.
	self assert: (game movePlayer: Direction right) equals: false.
	self assert: (game movePlayer: Direction down) equals: false