tests-accessing
testDamage
	| health |
	health := MiHealth new.
	health damage: 0.
	self assert: health current equals: health maximal.
	
	health damage: 10.
	self assert: health current equals: 90.
	
	health damage: 90.
	self assert: health current equals: 0.
	
	health damage: 1.
	self assert: health current equals: 0.
	
	
	