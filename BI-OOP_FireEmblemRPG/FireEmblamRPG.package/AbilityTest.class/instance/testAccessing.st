tests
testAccessing
	| ability |
	ability := Ability new.
	
	ability value: 10.
	self assert:(ability value = 10).
	ability rank: 4.
	self assert:(ability rank = 4).