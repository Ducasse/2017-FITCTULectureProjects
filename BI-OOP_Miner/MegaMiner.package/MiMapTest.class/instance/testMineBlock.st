tests
testMineBlock
	| map pos |
	map := MiMap random.
	
	pos := 2@2.
		
	self assert: ((map at: pos) block class == MiUndergroundBlock ) not.
	
	map mineBlock: pos.
	self assert: ((map at: pos) block class == MiUndergroundBlock  ).
	map mineBlock: pos.
	self assert: ((map at: pos) block class == MiUndergroundBlock  ).