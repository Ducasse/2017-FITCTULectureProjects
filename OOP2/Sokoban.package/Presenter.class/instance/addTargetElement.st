canvas methods
addTargetElement
	| element |
	element := RawTargetElement new.
	element relocate: ((x - 1) * 64) @ ((y - 1) * 64).
	rawField attachElement: element