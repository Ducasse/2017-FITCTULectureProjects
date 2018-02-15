tests
testLevelUp
	| ability |
	ability := Ability new.
	ability value: 10.
	ability rank: 4.
	
	ability levelUp.
	self assert:(ability value between: 11 and: 13).
	
	ability rank: 12.
	self assert:(ability levelUp = 'Error: Rank out of bounds').