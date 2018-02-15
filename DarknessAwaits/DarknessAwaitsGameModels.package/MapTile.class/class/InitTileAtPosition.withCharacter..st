as yet unclassified
InitTileAtPosition: newPosition withCharacter: newCharacter
	| instance |
	instance := self new.
	instance position: newPosition.
	instance gameCharacter: newCharacter.
	^ instance.  