canvas methods
addCurrentScoreBox: info
	| element |
	element := RawCurrentScoreElement new.
	element info: info.
	element relocate: ((x - 1) * 64) @ ((y - 1) * 64).
	rawField attachElement: element