as yet unclassified
getEnemyTeam: fromUnit.
	"comment stating purpose of message"

	(fromUnit team == 1) ifTrue: [^ team2] .
	^ team1.