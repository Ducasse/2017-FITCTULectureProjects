canvas methods
addBoxElement
|element|
	element := RawBoxElement new.
	element relocate: ((x - 1) * 64) @ ((y - 1) * 64).
	rawField attachElement: element.