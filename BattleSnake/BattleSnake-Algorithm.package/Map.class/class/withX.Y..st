instance creation
withX: x Y: y
	| instance |
	instance := self basicNew.
	instance sizeX: x; sizeY: y.
	instance initialize.
	^ instance.