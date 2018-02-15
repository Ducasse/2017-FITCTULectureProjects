as yet unclassified
startAIFight
	"comment stating purpose of message"
	UnitResolver reset.
	UnitResolver myTeam: (team1) enemyTeam: (team2).
	[ self anySideDead ]
		whileFalse: [ UnitResolver  addMove: Move newRound. units
				do: [ :each | each ifNotNil: [
							each turn.
							each update.
							ui printEvent: ''.
							self anySideDead
								ifTrue: [ ^ self ]. ] ] ]