canvas methods
addOptimalScoreBox: info
	| element |
	element := RawOptimalScoreElement new.
	element info: info.
	element relocate: ((x - 1) * 64) @ ((y - 1) * 64).
	rawField attachElement: element