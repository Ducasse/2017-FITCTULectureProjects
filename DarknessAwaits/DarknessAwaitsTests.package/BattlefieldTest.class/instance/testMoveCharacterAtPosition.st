tests
testMoveCharacterAtPosition
	|hero field tile pos|
	hero := Hero new.
	hero name: 'Hero'.
	
	pos := Position new.
	pos posX: 2; posY: 2.
	
	field := BattleField new.
	field putCharacter: hero atPosition: pos.
	
	tile := field tileAtPosition: pos.
	self assert: 'Hero' == tile gameCharacter name.
	
	pos posX: 6; posY: 4.
	field moveCharacter: hero atPosition: pos.
	
	tile := field tileAtPosition: pos.
	self assert: 'Hero' == tile gameCharacter name.
	 