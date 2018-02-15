canvas methods
addInfoBox: info
	| element |
	element := RawInfoElement new.
	element info: info.
	element relocate: ((x - 1) * 64) @ ((y - 1) * 64).
	rawField attachElement: element