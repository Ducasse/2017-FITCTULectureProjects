testing
isEmpty: pos
	| tile |
	tile := self tileAtPosition: pos.
	tile gameCharacter ifNil: [ ^true ].
	^false.