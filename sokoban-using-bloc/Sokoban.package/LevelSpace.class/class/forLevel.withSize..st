instance creation
forLevel: aLevel withSize: aPoint
	| res |
	res := self new.
	res extent: aPoint.
	res levelElem: (LevelElement forLevel: aLevel withSize: aPoint).
	^ res