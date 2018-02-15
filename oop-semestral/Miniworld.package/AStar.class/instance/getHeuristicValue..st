run
getHeuristicValue: t
	| xd yd distance |
	distance := 0.
	isSetEnd ifTrue: [
		yd := (t y) - (targetRow).
		xd := (t x) - (targetColumn).
		distance := (yd*yd + (xd*xd)) sqrt.
	].
	^ distance + (t distance).