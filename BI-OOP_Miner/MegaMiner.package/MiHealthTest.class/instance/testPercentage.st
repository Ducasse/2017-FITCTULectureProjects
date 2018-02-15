tests-accessing
testPercentage
	| health |
	health := MiHealth new.
	
	health current: 50.
	self assert: health percentage equals: 50.
	
	health damage: 47.
	self assert: health percentage equals: 3.
	
	health damage: 47.
	self assert: health percentage equals: 0.
	