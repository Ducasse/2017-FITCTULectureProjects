accessing
putCharacter: character atPosition: pos
	| tile |
	tile := self tileAtPosition: pos.
	
	tile gameCharacter: character.
	character ifNotNil: [ character position: pos ].
	
	