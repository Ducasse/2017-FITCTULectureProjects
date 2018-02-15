tests-actions
testMineOutBlock
	| holder |
	holder := (MiBlockHolder with: (MiMap generateUnderground: 1)) .
	
	holder mineOutBlock.
	self assert: holder block class == MiUndergroundBlock.