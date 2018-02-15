as yet unclassified
nextUnit
	currentUnit := (currentUnit + 1) % ((units size) + 1).
	(currentUnit = 0) ifTrue: [ UnitResolver addMove: Move newRound. currentUnit := 1 ].