canvas methods
addWallElement
	| element |
	element := RawWallElement new.
	element relocate: ((x - 1) * 64) @ ((y - 1) * 64).
	rawField attachElement: element