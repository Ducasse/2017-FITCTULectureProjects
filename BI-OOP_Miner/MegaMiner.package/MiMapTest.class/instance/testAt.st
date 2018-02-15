tests
testAt
	| map |
	map := MiMap random.
	self assert: (map at: 1@1 ) class = MiBlockHolder  .
	
	
