tests
testBlocks
	| map |
	map := MiMap blocks: MiMap generate .
	
	self assert: map isNotNil .
	self assert: map portal isNotNil .
	
