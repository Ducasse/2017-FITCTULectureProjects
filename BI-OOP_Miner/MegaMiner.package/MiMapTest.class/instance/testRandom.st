tests
testRandom
	| map |
	map := MiMap random.
	self assert: map blocks isNotNil.
	self assert: (map size > 0).
	
	
