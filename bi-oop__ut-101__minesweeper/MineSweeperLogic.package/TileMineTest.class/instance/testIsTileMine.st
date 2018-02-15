tests
testIsTileMine
	| t |
	t := TileMine x: 1 y: 1.
	self assert: t isTileMine. 