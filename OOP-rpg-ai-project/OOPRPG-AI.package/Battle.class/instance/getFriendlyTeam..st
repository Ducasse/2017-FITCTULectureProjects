as yet unclassified
getFriendlyTeam: fromUnit.
	(fromUnit team == 1) ifTrue: [^ team1] .
	^ team2.