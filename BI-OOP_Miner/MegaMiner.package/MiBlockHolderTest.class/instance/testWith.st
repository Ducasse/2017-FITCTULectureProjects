tests-actions
testWith
	|holder block|
	block := MiUndergroundBlock new.
	holder := (MiBlockHolder with: block) .
	
	self assert: holder block == block
	
