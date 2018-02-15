tests
testLevelWidthHeight
	| board level |
	level := Level new.
	board := Board width: 18 height: 15.
	level board: board.
	self assert: level width equals: 18.
	self assert: level height equals: 15