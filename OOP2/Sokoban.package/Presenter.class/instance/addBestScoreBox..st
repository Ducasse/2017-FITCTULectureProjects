canvas methods
addBestScoreBox: info
	| element |
	element := RawBestScoreElement new.
	element info: info.
	element relocate: ((x - 1) * 64) @ ((y - 1) * 64).
	rawField attachElement: element