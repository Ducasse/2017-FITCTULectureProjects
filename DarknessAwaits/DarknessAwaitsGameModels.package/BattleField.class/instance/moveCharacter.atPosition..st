accessing
moveCharacter: character atPosition: position
	(self getCharacterAtPosition: position) 
		ifNotNil: [ gameManager gameLog addLog: 'Cannot move at selected position, position is occupied'. ^ false ].
	(self
		isPosition: character position
		in: character movementSpeed
		to: position)
		ifFalse: [ gameManager gameLog addLog: 'The position is too far from character'. ^ false ].
	self putCharacter: nil atPosition: character position.
	self putCharacter: character atPosition: position.
	gameManager gameLog addLog: character name, ' has moved to new position'.
	
	^ true.