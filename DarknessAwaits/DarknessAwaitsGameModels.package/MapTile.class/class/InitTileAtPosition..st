as yet unclassified
InitTileAtPosition: newPosition
	| instance |
	instance := self new.
	instance position: newPosition.
	
	^ instance.  