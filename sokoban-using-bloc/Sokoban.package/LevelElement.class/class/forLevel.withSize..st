instance creation
forLevel: aLevel withSize: aPoint
	| elem |
	elem := self new.
	elem displaySize: aPoint x @ (aPoint y - self verticalMargin).
	elem level: aLevel.
	^ elem