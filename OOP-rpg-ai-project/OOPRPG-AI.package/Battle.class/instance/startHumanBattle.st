as yet unclassified
startHumanBattle
   	UnitResolver reset.
	UnitResolver myTeam: (team1) enemyTeam: (team2).
	UnitResolver  addMove: Move newRound.
	self ui open.
	self printTeamOverviews.
	self updateUiMode