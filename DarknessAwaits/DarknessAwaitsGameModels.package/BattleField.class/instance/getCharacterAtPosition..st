accessing
getCharacterAtPosition: pos
	| tile |
	tile := self tileAtPosition: pos.
	
	^ tile gameCharacter
	
	