tests
testInitalization
	|field a b|
	
	field := BattleField new.
	a := field map size.
	b := (field gridSize + 1) * (field gridSize + 1).
	self assert: a == b.