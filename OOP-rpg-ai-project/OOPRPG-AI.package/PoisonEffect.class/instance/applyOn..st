as yet unclassified
applyOn: aUnit
	target := aUnit.
	timer := caster mpwr skillcheck.
	damage := caster mpwr - target def skillcheck.
	damage < 0 ifTrue: [ damage := 1 ].