test actions
testFirstMove
	| grid |
	grid := MSGrid new.
	self assert: grid firstMove equals: true.
	grid firstMove: false.
	self assert: grid firstMove equals: false.
	