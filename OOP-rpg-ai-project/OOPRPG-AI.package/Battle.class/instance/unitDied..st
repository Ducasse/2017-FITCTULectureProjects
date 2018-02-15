updating
unitDied: aUnit
	"comment stating purpose of message"
	| deadUnitPos |
	units doWithIndex: [ :el :i | (el = aUnit) ifTrue: [ deadUnitPos := i ] ].
	
	(deadUnitPos < currentUnit) ifTrue: [ currentUnit := currentUnit - 1 ].
	
	UnitResolver unitDied: aUnit.
	
	aUnit team == 1 ifTrue: [team1 remove: aUnit].
	aUnit team == 2 ifTrue: [team2 remove: aUnit].
	units remove: aUnit.